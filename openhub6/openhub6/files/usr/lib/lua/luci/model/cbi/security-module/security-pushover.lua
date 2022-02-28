m = Map("security-pushover", translate("Pushover Settings"), translate(""))
d = m:section(TypedSection, "info", "")

a = d:option(Value, "user_key", "Your User Key"); a.optional=false; a.rmempty = false;
a = d:option(Value, "api_key", "API Token/Key"); a.optional=false; a.rmempty = false;

return m
