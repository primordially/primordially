using System.Collections.Immutable;
using System.Linq;
using System.Reactive.Subjects;
using System.Text;
using Primordially.Core;
using Primordially.PluginCore;
using ReactiveUI;

namespace Primordially.Pathfinder.Views
{
    [ModelFor(typeof(PathfinderClassControl))]
    public sealed class PathfinderClassViewModel : ObservableViewModel<Character>
    {
#if DEBUG
        public PathfinderClassViewModel() : this(SampleCharacterCreator.Wizard)
        {
        }
#endif

        public PathfinderClassViewModel(BehaviorSubject<Character> character) : base(character)
        {
        }

        protected override void RegisterModelUpdates()
        {
            // No model updates ready yet
        }

        protected override void ModelUpdatedImpl(Character character)
        {
            Levels = character.Levels
                .Select((l, i) => ClassLevelViewModel.FromModel(l, i, character.GetVariable("CON").Value))
                .ToImmutableList();
        }

        private ImmutableList<ClassLevelViewModel> _levels = null!;
        public ImmutableList<ClassLevelViewModel> Levels
        {
            get => _levels;
            set => this.RaiseAndSetIfChanged(ref _levels, value);
        }

        public class ClassLevelViewModel : ReactiveObject
        {
            public int ConMod { get; }
            private string _name;

            public ClassLevelViewModel(string name, int level, int hp, int conMod, FavoredClassBonus favoredClassBonus)
            {
                ConMod = conMod;
                _name = name;
                _level = level;
                _hp = hp;
                _favoredClassBonus = favoredClassBonus;
            }

            public string Name
            {
                get => _name;
                set => this.RaiseAndSetIfChanged(ref _name, value);
            }

            private int _level;

            public int Level
            {
                get => _level;
                set => this.RaiseAndSetIfChanged(ref _level, value);
            }

            private int _hp;

            public int Hp
            {
                get => _hp;
                set => this.RaiseAndSetIfChanged(ref _hp, value);
            }

            private FavoredClassBonus _favoredClassBonus;

            public FavoredClassBonus FavoredClassBonus
            {
                get => _favoredClassBonus;
                set => this.RaiseAndSetIfChanged(ref _favoredClassBonus, value);
            }

            public static ClassLevelViewModel FromModel(CharacterLevel levelData, int level, int conMod)
            {
                return new ClassLevelViewModel(levelData.ClassName, level, levelData.GetVariable("Hp").Value, conMod, new FavoredClassBonus("+1 Hit Points"));
            }
        }

        public class FavoredClassBonus : ReactiveObject
        {
            public FavoredClassBonus(string displayString)
            {
                _displayString = displayString;
            }
            
            private string _displayString;
            public string DisplayString
            {
                get => _displayString;
                set => this.RaiseAndSetIfChanged(ref _displayString, value);
            }
        }

        public class VariableViewModel : ReactiveObject
        {
            public VariableViewModel(int @base, string bonusString, int bonusTotal)
            {
                _base = @base;
                BonusString = bonusString;
                BonusTotal = bonusTotal;
            }

            private int _base;

            public int Base
            {
                get => _base;
                set
                {
                    this.RaiseAndSetIfChanged(ref _base, value);
                    this.RaisePropertyChanged(nameof(BonusTotal));
                }
            }

            public string BonusString { get; }

            public int BonusTotal { get; }

            public int Total => Base + BonusTotal;

            public static VariableViewModel FromModel(CharacterVariable variable)
            {
                StringBuilder builder = new StringBuilder();
                foreach (var bonus in variable.GetAppliedBonuses(false))
                {
                    if (bonus.Value > 0)
                    {
                        builder.Append(" + ");
                        builder.Append(bonus.Value);
                    }
                    else
                    {
                        builder.Append(" - ");
                        builder.Append(-bonus.Value);
                    }
                }

                int baseValue = variable.GetBase();
                return new VariableViewModel(baseValue, builder.ToString(), variable.Value - baseValue);
            }
        }
    }
}