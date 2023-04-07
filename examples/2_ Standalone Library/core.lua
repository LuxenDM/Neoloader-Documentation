local function doa()
	lib.log_error("Woah, a library's function was just called!")
end

lib.set_class("lib_example_standalone", "0", {do_action = doa})