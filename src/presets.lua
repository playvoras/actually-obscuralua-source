return {
    Strong = {
        LuaVersion = "LuaU"; VarNamePrefix = ""; NameGenerator = "MangledShuffled"; PrettyPrint = false; Seed = 0;
        Steps = {
            {Name = "PaidAntiTamper"; Settings = {}},
            {Name = "Vmify"; Settings = {}},
            {Name = "EncryptStrings"; Settings = {}},
            {Name = "Vmify"; Settings = {}},
            {Name = "ConstantArray"; Settings = {Treshold = 1; StringsOnly = true; Shuffle = true; Rotate = true; LocalWrapperTreshold = 0}},
            {Name = "NumbersToExpressions"; Settings = {}},
            {Name = "StringsToExpressions"; Settings = {}},
            {Name = "WrapInFunction"; Settings = {}}
        }
    }
}
