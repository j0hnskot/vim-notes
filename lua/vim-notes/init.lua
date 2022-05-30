-- Imports the plugin's additional Lua modules.
local insert = require("vim-notes.insert")

-- Creates an object for the module. All of the module's
-- functions are associated with this object, which is
-- returned when the module is called with `require`.
local M = {}

-- Routes calls made to this module to functions in the
-- plugin's other modules.
-- M.fetch_notes = fetch.fetch_notes
M.insert_notes = insert.insert_notes

return M
