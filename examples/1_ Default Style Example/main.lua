if type(lib) == "table" and lib[0] == "LME" then
	if not lib.is_exist("default_example") then
		lib.register("plugins/default/declaration.ini")
	end
end

--no need to execute the core file as it will be launched through the Init process