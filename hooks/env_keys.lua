function PLUGIN:EnvKeys(ctx)
    -- ctx.path is the directory where mise downloaded the script
    return {
        { key = "PATH", value = ctx.path }
    }
end
