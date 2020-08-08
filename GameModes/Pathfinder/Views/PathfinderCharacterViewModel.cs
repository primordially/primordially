using System.Reactive.Subjects;
using Primordially.Core;
using Primordially.PluginCore;
using ReactiveUI;

namespace Primordially.Pathfinder.Views
{
    [ModelFor(typeof(PathfinderCharacterView))]
    public sealed class PathfinderCharacterViewModel : ObservableViewModel<Character>
    {
#if DEBUG
        public PathfinderCharacterViewModel() : this(SampleCharacterCreator.Wizard)
        {
        }
#endif

        public PathfinderCharacterViewModel(BehaviorSubject<Character> characterObservable) : base(characterObservable)
        {
            ClassModel = new PathfinderClassViewModel(Observable);
            this.ToModel(m => m.Name, (Character c, string v) => c.WithName(v));
        }

        protected override void ModelUpdatedImpl(Character character)
        {
            Name = character.Name;
        }
        
        private string _name = null!;
        public string Name
        {
            get => _name;
            set => this.RaiseAndSetIfChanged(ref _name, value);
        }

        public PathfinderClassViewModel ClassModel { get; }
    }
}