if type(lib) == "table" and lib[0] == "LME" then
	if not lib.is_exist("reliant_example_2") then
		lib.register("plugins/default2/declaration.ini")
	end
	if not lib.is_exist("relier_example_2") then
		lib.register("plugins/default2/dec2.ini")
	end
end

--no need to execute the core file as it will be launched through the Init process