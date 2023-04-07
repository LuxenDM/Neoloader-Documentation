if type(lib) == "table" and lib[0] == "LME" then --makes sure a Neoloader-like environment is set up.
	--if your plugin expects a certain API and/or patch level of neoloader, check that here!
	if not lib.is_exist("empty2") then --check if your plugin already exists in the registry
		lib.register("plugins/distributable library/registration.ini") --register the missing plugin
	end
	
	if not lib.is_exist("lib_example") then --check if the library exists or not, and register it
		lib.register("plugins/distributable library/library/registration.ini") --register the missing library
	end
end