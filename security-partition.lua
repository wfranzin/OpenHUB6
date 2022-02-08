m = Map("security-partition", translate("Partition Labels"), translate(""))
d = m:section(TypedSection, "info", "")

a = d:option(Value, "1", "Partition 1"); a.optional=false; a.rmempty = false;
a = d:option(Value, "2", "Partition 2"); a.optional=false; a.rmempty = false;
a = d:option(Value, "3", "Partition 3"); a.optional=false; a.rmempty = false;
a = d:option(Value, "4", "Partition 4"); a.optional=false; a.rmempty = false;
a = d:option(Value, "5", "Partition 5"); a.optional=false; a.rmempty = false;
a = d:option(Value, "6", "Partition 6"); a.optional=false; a.rmempty = false;
a = d:option(Value, "7", "Partition 7"); a.optional=false; a.rmempty = false;
a = d:option(Value, "8", "Partition 8"); a.optional=false; a.rmempty = false;

return m
