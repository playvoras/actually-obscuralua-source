return {
    Strong = {
        LuaVersion = "LuaU"; VarNamePrefix = ""; NameGenerator = "Mangled"; PrettyPrint = false; Seed = 0;
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
        LuaVersion = "LuaU"; VarNamePrefix = ""; NameGenerator = "Mangled"; PrettyPrint = false; Seed = 0;
        Steps = {
            {Name = "ProxifyLocals"; Settings = {}},
            {Name = "Vmify"; Settings = { VM = "CompilerB" }},
            {Name = "SplitStrings"; Settings = {}},
            {Name = "PaidAntiTamper"; Settings = {}},
            {Name = "EncryptStrings"; Settings = {}},
            {Name = "NumbersToExpressions"; Settings = {}},
            {Name = "StringsToExpressions"; Settings = {}},
            {Name = "Vmify"; Settings = { VM = "random" }},
            {Name = "WrapInFunction"; Settings = {}}
        }
    }
}
