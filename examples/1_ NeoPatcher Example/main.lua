if type(lib) == "table" and lib[0] == "LME" then
	if not lib.is_exist("neopatch_example") then
		lib.register("plugins/NeoPatcher Example/declaration.ini")
	end
	
	if lib.is_ready("neopatch_example") then
		lib.resolve_file("core.lua") --execute the original main.lua file as it is set as loaded and ready
	end
else
	dofile("core.lua") --execute the original file as Neoloader isn't installed
end
