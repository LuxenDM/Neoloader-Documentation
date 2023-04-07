local function yarr()
	lib.log_error("This will only display after core2.lua is activated and run")
end


lib.require({{"relier_example_2", "0"}}, yarr)
--[[
lib.require uses a table of tables to define every soft requirement for a specific function.

for example, this table would give three soft dependencies to launch yarr:
lib.require(
	{
		{"glib", "0"}, 			--soft requirement 1
		{"MultiUI", "6"},		--soft req 2
		{"theology", "1.2"},	--soft req 3
	}, 
	yarr --function to execute once all three are met, if they are
)

]]--



lib.log_error("This code will always run because core.lua is not HARD dependent on core2.lua")