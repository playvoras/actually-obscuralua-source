return {
    Strong = {
        LuaVersion = "LuaU"; VarNamePrefix = ""; NameGenerator = "MangledShuffled"; PrettyPrint = false; Seed = 0;
        Steps = {
            {Name = "PaidAntiTamper"; Settings = {}},
            {Name = "EncryptStrings"; Settings = {}},
            {Name = "NumbersToExpressions"; Settings = {}},
            {Name = "StringsToExpressions"; Settings = {}},
            {Name = "Vmify"; Settings = { VM = "random" }},
            {Name = "WrapInFunction"; Settings = {}}
        }
    },
    uhmthisistoohigh = {
        LuaVersion = "LuaU"; VarNamePrefix = ""; NameGenerator = "MangledShuffled"; PrettyPrint = false; Seed = 0;
        Steps = {
            {Name = "PaidAntiTamper"; Settings = {}},
            {Name = "EncryptStrings"; Settings = {}},
            {Name = "Vmify"; Settings = { VM = "CompilerD" }},
            {Name = "NumbersToExpressions"; Settings = {}},
            {Name = "StringsToExpressions"; Settings = {}},
            {Name = "Vmify"; Settings = { VM = "random" }},
            {Name = "NumbersToExpressions"; Settings = {}},
            {Name = "StringsToExpressions"; Settings = {}},
            {Name = "WrapInFunction"; Settings = {}}
        }
    }
}
