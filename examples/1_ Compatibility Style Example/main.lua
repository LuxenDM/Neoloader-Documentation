if type(lib) == "table" and lib[0] == "LME" then
	if not lib.is_exist("compat_example") then
		lib.register("plugins/compatibility/declaration.ini")
	end
	
	if lib.is_ready("compat_example") then
		lib.resolve_file("core.lua") --execute the original main.lua file as it is set as loaded and ready
	end
else
	dofile("core.lua") --execute the original file as Neoloader isn't installed
end
