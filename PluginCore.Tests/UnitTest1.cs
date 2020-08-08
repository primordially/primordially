using System.Reactive.Subjects;
using FluentAssertions;
using NUnit.Framework;
using ReactiveUI;

namespace Primordially.PluginCore.Tests
{
    public class ObservableViewModelBaseTests
    {
        private class TestModel
        {
            public TestModel(string stringValue, int intValue)
            {
                StringValue = stringValue;
                IntValue = intValue;
            }

            public string StringValue { get; }
            public int IntValue { get; }
        }

        private class TestViewModel : ObservableViewModel<TestModel>
        {
            public TestViewModel(BehaviorSubject<TestModel> observable) : base(observable)
            {
                this.ToModel(m => m.VmString, (TestModel m, string v) => new TestModel(v, m.IntValue));
                this.ToModel(m => m.VmInt, (TestModel m, int v) => new TestModel(m.StringValue, v));
            }

            protected override void ModelUpdatedImpl(TestModel model)
            {
                VmString = model.StringValue;
                VmInt = model.IntValue;
            }

            private string _vmString = null!;

            public string VmString
            {
                get => _vmString;
                set => this.RaiseAndSetIfChanged(ref _vmString, value);
            }

            private int _vmInt;

            public int VmInt
            {
                get => _vmInt;
                set => this.RaiseAndSetIfChanged(ref _vmInt, value);
            }
        }

        [Test]
        public void InitialStateSynchronized()
        {
            BehaviorSubject<TestModel> subject = new BehaviorSubject<TestModel>(new TestModel("START", -456));
            TestViewModel a = new TestViewModel(subject);
            a.VmString.Should().Be("START");
            a.VmInt.Should().Be(-456);
        }

        [Test]
        public void ModelChangeFlowsToView()
        {
            BehaviorSubject<TestModel> subject = new BehaviorSubject<TestModel>(new TestModel("START", -456));
            TestViewModel a = new TestViewModel(subject);
            subject.OnNext(new TestModel("END", 42));
            a.VmString.Should().Be("END");
            a.VmInt.Should().Be(42);
        }

        [Test]
        public void ViewChangeFlowsToModel()
        {
            BehaviorSubject<TestModel> subject = new BehaviorSubject<TestModel>(new TestModel("START", -456));
            TestViewModel a = new TestViewModel(subject);
            a.VmString = "END";
            subject.Value.StringValue.Should().Be("END");
            a.VmInt = 42;
            subject.Value.IntValue.Should().Be(42);
        }

        [Test]
        public void MultipleModelsSynchronized()
        {
            BehaviorSubject<TestModel> subject = new BehaviorSubject<TestModel>(new TestModel("START", -456));
            TestViewModel a = new TestViewModel(subject);
            TestViewModel b = new TestViewModel(subject);
            a.VmString = "END";
            b.VmString.Should().Be("END");
            a.VmInt = 42;
            b.VmInt.Should().Be(42);
        }
    }
}