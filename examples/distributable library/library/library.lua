local public_table = {} --table containing all functions you want to be accessible

local current_mod_path = lib.get_path("lib_example", "1") --obtain the library's path, so we can access additional files

public_table.action = function(...)
	local arg = {...}
	print ("recieved " .. tostring(#arg) .. " arguments:")
	for i=1, #arg do
		print(tostring(arg[i]))
	end
end

_, public_table.sometext = lib.resolve_file(current_mod_path .. "lib_file_2.lua")

lib.set_class("lib_example", "1", public_table)
lib.lock_class("lib_example", "1", "yarr_key")

--[[
Any mod can use action() by doing either
	1. lib.execute("lib_example", "1", "action", ...)
	or
	2.	local libtable = lib.get_class("lib_example", "1")
		libtable.action(...)
]]--