using System;

namespace PCSharpGen.Core
{
    public class Class
    {
        // Maybe should be an enum?
        public string Name { get; set; }

        public int HitDie { get; set; }

        public int SkillRanks { get; set; }

        public float BaseAttackBonus { get; set; }

        public float FortitudeSaveBase { get; set; }

        public float FortitudeSavePerLevel { get; set; }

        public float ReflexSaveBase { get; set; }

        public float ReflexSavePerLevel { get; set; }

        public float WillSaveBase { get; set; }

        public float WillSavePerLevel { get; set; }
    }
}
