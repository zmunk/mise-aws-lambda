function PLUGIN:PostInstall(ctx)

    local sdkInfo = ctx.sdkInfo[PLUGIN.name]
    local path = sdkInfo.path

    -- rename aws-lambda.sh to lambda
    local result = os.execute("mv " .. path .. "/aws-lambda.sh" .. " " .. path .. "/" .. PLUGIN.name)
    if result ~= 0 then
        error("Failed to rename " .. PLUGIN.name)
    end
end
