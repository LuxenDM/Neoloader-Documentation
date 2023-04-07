if type(lib) == "table" and lib[0] == "LME" then
	if not lib.is_exist("hybrid_example") then
		lib.register("plugins/hybrid/declaration.ini")
	end
	
	if not lib.is_ready("hybrid_example") then
		return --force the plugin to end, plugin is not set to load
	end
else
	return --force the plugin to end, Neoloader isn't available
end

--anything below this preamble will run if Neoloader exists and this plugin is set to load.

lib.log_error("The hybrid plugin launched successfully!")