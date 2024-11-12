-- should be good preset but HIGH FILE SIZE :troll:
return {
    Strong = {
        LuaVersion = "LuaU"; VarNamePrefix = ""; NameGenerator = "MangledShuffled"; PrettyPrint = false; Seed = 0;
        Steps = {
            {Name = "PaidAntiTamper"; Settings = {}},
            {Name = "EncryptStrings"; Settings = {}},
            {Name = "NumbersToExpressions"; Settings = {}},
            {Name = "StringsToExpressions"; Settings = {}},
            {Name = "Vmify", Settings = { VM = "random" } },
            {Name = "WrapInFunction"; Settings = {}}
        }
    }
}
