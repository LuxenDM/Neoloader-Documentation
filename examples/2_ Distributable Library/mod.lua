local public = {}

function public.open ()
	lib.execute("lib_example", "1", "action", "testing", "testing", "1", "2", "3")
	print(lib.execute("lib_example", "1", "sometext"))
end

lib.set_class("empty2", "1", public)