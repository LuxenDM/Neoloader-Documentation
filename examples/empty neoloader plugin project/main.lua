if type(lib) == "table" and lib[0] == "LME" then --makes sure a Neoloader-like environment is set up.
	--if your plugin expects a certain API and/or patch level of neoloader, check that here!
	if not lib.is_exist("empty") then --check if your plugin already exists in the registry
		lib.register("plugins/empty/registration.ini") --register the missing plugin
	end
	
	if lib.is_ready("empty") then
		--do any post-setup work here
	end
else
	--launch the plugin file and pass an argument that Neoloader doesn't exist, or warn the user this plugin requires Neoloader, or whatever else you want to do given that Neoloader doesn't exist.
end