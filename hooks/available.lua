function PLUGIN:Available(ctx)
    local utils = require("utils")
    local http = require("http")
    local json = require("json")

    local resp, err = http.get({ url = "https://api.github.com/gists/" .. utils.GIST_ID .. "/commits" })
    if err ~= nil then error("Failed to fetch: " .. err) end

    local commits = json.decode(resp.body)
    local result = { { version = "latest" } } -- Manual "latest" entry

    for _, c in ipairs(commits) do
        table.insert(result, { version = c.version })
    end
    return result
end
