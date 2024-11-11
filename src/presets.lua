return {
    ["Strong"] = {
        LuaVersion = "LuaU",
        VarNamePrefix = "",
        NameGenerator = "Mangled",
        PrettyPrint = false,
        Seed = math.random(100000, 1e9),
        Steps = {
            { Name = "WatermarkCheck", },
            { Name = "PaidAntiTamper" },
            { Name = "StringsToExpressions" },
            { Name = "NumbersToExpressions" },
            { Name = "EncryptStrings" },
            { Name = "Vmify", Settings = { VM = "random" } },
            { Name = "StringsToExpressions" },
            { Name = "NumbersToExpressions" },
            { Name = "WrapInFunction" }
        }
    }
}
