-- Imports the module for handling SQLite.
local curl = require("cURL")
local apiURL = "https://api.notion.com/v1/"
local notionVersion = "2022-02-22"
local authToken = "secret_8buBwFGchM0SERV94dcyk0JWClpf6ApRenOWuioeHhx"
--[[
curl.easy{
url = apiURL .. 'blocks/a63bdb94-8ab4-4d4e-869d-b5ddf9430506/children',
    httpheader = {
        "Authorization: Bearer " .. authToken,
        "Notion-Version: " .. notionVersion
    },
    writefunction = io.stderr -- use io.stderr:write()
  }
  :perform()
:close()
--]]
curl.easy{
url = apiURL .. 'search' .. arg[1],
post = true,
    httpheader = {
        "Authorization: Bearer " .. authToken,
        "Notion-Version: " .. notionVersion
    }
  }
  :perform()
:close()
