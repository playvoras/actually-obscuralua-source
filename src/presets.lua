
local function uuid()
    return string.gsub('xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx', '[xy]', function(c)
        return string.format('%x', (c == 'x') and math.random(0, 0xf) or math.random(8, 0xb))
    end)
end

return {
    ["Basic"] = {
        LuaVersion = "LuaU",
        VarNamePrefix = "",
        NameGenerator = "MangledShuffled",
        PrettyPrint = false,
        Seed = 0,
        Steps = {
            { Name = "Vmify", Settings = { VM = "CompilerA" } },
            { Name = "EncryptStrings", Settings = {} },
            { Name = "SplitStrings", Settings = {} },
            { Name = "WatermarkCheck", Settings = {
                Content = "This script is safeguarded by the free version of ObscuraLua. Version 1.1.0.",
                CustomVariable = "__OBSCURALUA__"
            }},
            { Name = "FreeAntiTamper", Settings = {} },
            { Name = "Vmify", Settings = { VM = "CompilerA" } },
            { Name = "ConstantArray", Settings = {} },
            { Name = "StringsToExpressions", Settings = {} },
            { Name = "NumbersToExpressions", Settings = {} },
            { Name = "WrapInFunction", Settings = {} },
        }
    },
    ["Strong"] = {
        LuaVersion = "LuaU",
        VarNamePrefix = "",
        NameGenerator = "MangledShuffled",
        PrettyPrint = false,
        Seed = 0,
        Steps = {
            { Name = "Vmify", Settings = { VM = "random" } },
            { Name = "AddVararg", Settings = {} },
            { Name = "EncryptStrings", Settings = {} },
            { Name = "SplitStrings", Settings = {} },
            { Name = "PaidAntiTamper", Settings = {} },
            { Name = "WatermarkCheck", Settings = {
                Content = "This script is safeguarded by the paid version of ObscuraLua. Version 1.1.0.",
                CustomVariable = "__OBSCURALUA__"
            }},
            { Name = "StringsToExpressions", Settings = {} },
            { Name = "NumbersToExpressions", Settings = {} },
            { Name = "Vmify", Settings = { VM = "random" } },
            { Name = "StringsToExpressions", Settings = {} },
            { Name = "NumbersToExpressions", Settings = {} },
            { Name = "StringsToExpressions", Settings = {} },
            { Name = "StringsToExpressions", Settings = {} },
            { Name = "NumbersToExpressions", Settings = {} },
            { Name = "StringsToExpressions", Settings = {} },
            { Name = "NumbersToExpressions", Settings = {} },
            { Name = "StringsToExpressions", Settings = {} },
            { Name = "NumbersToExpressions", Settings = {} },
            { Name = "ProxifyLocals", Settings = {} },
            { Name = "WrapInFunction", Settings = {} },
        }
    }
}
