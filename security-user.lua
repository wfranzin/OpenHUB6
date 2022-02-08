m = Map("security-user", translate("User Labels"), translate(""))

d = m:section(TypedSection, "info", "Regular User Codes")
a = d:option(Value, "01", "Regular User Code 1"); a.optional=false; a.rmempty = false;
a = d:option(Value, "02", "Regular User Code 2"); a.optional=false; a.rmempty = false;
a = d:option(Value, "03", "Regular User Code 3"); a.optional=false; a.rmempty = false;
a = d:option(Value, "04", "Regular User Code 4"); a.optional=false; a.rmempty = false;
a = d:option(Value, "05", "Regular User Code 5"); a.optional=false; a.rmempty = false;
a = d:option(Value, "06", "Regular User Code 6"); a.optional=false; a.rmempty = false;
a = d:option(Value, "07", "Regular User Code 7"); a.optional=false; a.rmempty = false;
a = d:option(Value, "08", "Regular User Code 8"); a.optional=false; a.rmempty = false;
a = d:option(Value, "09", "Regular User Code 9"); a.optional=false; a.rmempty = false;
a = d:option(Value, "10", "Regular User Code 10"); a.optional=false; a.rmempty = false;
a = d:option(Value, "11", "Regular User Code 11"); a.optional=false; a.rmempty = false;
a = d:option(Value, "12", "Regular User Code 12"); a.optional=false; a.rmempty = false;
a = d:option(Value, "13", "Regular User Code 13"); a.optional=false; a.rmempty = false;
a = d:option(Value, "14", "Regular User Code 14"); a.optional=false; a.rmempty = false;
a = d:option(Value, "15", "Regular User Code 15"); a.optional=false; a.rmempty = false;
a = d:option(Value, "16", "Regular User Code 16"); a.optional=false; a.rmempty = false;
a = d:option(Value, "17", "Regular User Code 17"); a.optional=false; a.rmempty = false;
a = d:option(Value, "18", "Regular User Code 18"); a.optional=false; a.rmempty = false;
a = d:option(Value, "19", "Regular User Code 19"); a.optional=false; a.rmempty = false;
a = d:option(Value, "20", "Regular User Code 20"); a.optional=false; a.rmempty = false;
a = d:option(Value, "21", "Regular User Code 21"); a.optional=false; a.rmempty = false;
a = d:option(Value, "22", "Regular User Code 22"); a.optional=false; a.rmempty = false;
a = d:option(Value, "23", "Regular User Code 23"); a.optional=false; a.rmempty = false;
a = d:option(Value, "24", "Regular User Code 24"); a.optional=false; a.rmempty = false;
a = d:option(Value, "25", "Regular User Code 25"); a.optional=false; a.rmempty = false;
a = d:option(Value, "26", "Regular User Code 26"); a.optional=false; a.rmempty = false;
a = d:option(Value, "27", "Regular User Code 27"); a.optional=false; a.rmempty = false;
a = d:option(Value, "28", "Regular User Code 28"); a.optional=false; a.rmempty = false;
a = d:option(Value, "29", "Regular User Code 29"); a.optional=false; a.rmempty = false;
a = d:option(Value, "30", "Regular User Code 30"); a.optional=false; a.rmempty = false;
a = d:option(Value, "31", "Regular User Code 31"); a.optional=false; a.rmempty = false;
a = d:option(Value, "32", "Regular User Code 32"); a.optional=false; a.rmempty = false;

d = m:section(TypedSection, "info", "Duress Codes")
a = d:option(Value, "33", "Duress Code 33"); a.optional=false; a.rmempty = false;
a = d:option(Value, "34", "Duress Code 34"); a.optional=false; a.rmempty = false;

d = m:section(TypedSection, "info", "Master Code")
a = d:option(Value, "40", "Master Code 40"); a.optional=false; a.rmempty = false;

d = m:section(TypedSection, "info", "Partition Master Codes")
a = d:option(Value, "41", "Partition Master Code 41"); a.optional=false; a.rmempty = false;
a = d:option(Value, "42", "Partition Master Code 42"); a.optional=false; a.rmempty = false;

return m
