if type(lib) == "table" and lib[0] == "LME" then
	if not lib.is_exist("lib_example_standalone") then
		lib.register("plugins/standalone/declaration.ini")
	end
	
	if lib.is_ready("lib_example_standalone") then --see if the library is loaded
		lib.execute("lib_example_standalone", "0", "do_action") --execute the library's do_action function.
	end
end

