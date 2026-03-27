function PLUGIN:PreInstall(ctx)
    local utils = require("utils")

    local version = ctx.version
    local url

    if version == "latest" then
        url = "https://gist.githubusercontent.com/zmunk/" .. utils.GIST_ID .. "/raw/aws-lambda.sh"
    else
        url = "https://gist.githubusercontent.com/zmunk/" .. utils.GIST_ID .. "/raw/" .. version .. "/aws-lambda.sh"
    end

    return {
        version = version,
        url = url,
        filename = "lambda",
    }
end
