m = Map("security-zone", translate("Zone Labels"), translate(""))

ts = m:section(TypedSection, "info", "Motion Sensors must include the word 'Motion' to send or not send Notifications"); ts.anonymous=true;

d = m:section(TypedSection, "info", "Zones 1 to 16")
a = d:option(Value, "001", "Zone 1"); a.optional=false; a.rmempty = false;
a = d:option(Value, "002", "Zone 2"); a.optional=false; a.rmempty = false;
a = d:option(Value, "003", "Zone 3"); a.optional=false; a.rmempty = false;
a = d:option(Value, "004", "Zone 4"); a.optional=false; a.rmempty = false;
a = d:option(Value, "005", "Zone 5"); a.optional=false; a.rmempty = false;
a = d:option(Value, "006", "Zone 6"); a.optional=false; a.rmempty = false;
a = d:option(Value, "007", "Zone 7"); a.optional=false; a.rmempty = false;
a = d:option(Value, "008", "Zone 8"); a.optional=false; a.rmempty = false;
a = d:option(Value, "009", "Zone 9"); a.optional=false; a.rmempty = false;
a = d:option(Value, "010", "Zone 10"); a.optional=false; a.rmempty = false;
a = d:option(Value, "011", "Zone 11"); a.optional=false; a.rmempty = false;
a = d:option(Value, "012", "Zone 12"); a.optional=false; a.rmempty = false;
a = d:option(Value, "013", "Zone 13"); a.optional=false; a.rmempty = false;
a = d:option(Value, "014", "Zone 14"); a.optional=false; a.rmempty = false;
a = d:option(Value, "015", "Zone 15"); a.optional=false; a.rmempty = false;
a = d:option(Value, "016", "Zone 16"); a.optional=false; a.rmempty = false;

d = m:section(TypedSection, "info", "Zones 17 to 32")
a = d:option(Value, "017", "Zone 17"); a.optional=false; a.rmempty = false;
a = d:option(Value, "018", "Zone 18"); a.optional=false; a.rmempty = false;
a = d:option(Value, "019", "Zone 19"); a.optional=false; a.rmempty = false;
a = d:option(Value, "020", "Zone 20"); a.optional=false; a.rmempty = false;
a = d:option(Value, "021", "Zone 21"); a.optional=false; a.rmempty = false;
a = d:option(Value, "022", "Zone 22"); a.optional=false; a.rmempty = false;
a = d:option(Value, "023", "Zone 23"); a.optional=false; a.rmempty = false;
a = d:option(Value, "024", "Zone 24"); a.optional=false; a.rmempty = false;
a = d:option(Value, "025", "Zone 25"); a.optional=false; a.rmempty = false;
a = d:option(Value, "026", "Zone 26"); a.optional=false; a.rmempty = false;
a = d:option(Value, "027", "Zone 27"); a.optional=false; a.rmempty = false;
a = d:option(Value, "028", "Zone 28"); a.optional=false; a.rmempty = false;
a = d:option(Value, "029", "Zone 29"); a.optional=false; a.rmempty = false;
a = d:option(Value, "030", "Zone 30"); a.optional=false; a.rmempty = false;
a = d:option(Value, "031", "Zone 31"); a.optional=false; a.rmempty = false;
a = d:option(Value, "032", "Zone 32"); a.optional=false; a.rmempty = false;

d = m:section(TypedSection, "info", "Zones 33 to 48")
a = d:option(Value, "033", "Zone 33"); a.optional=false; a.rmempty = false;
a = d:option(Value, "034", "Zone 34"); a.optional=false; a.rmempty = false;
a = d:option(Value, "035", "Zone 35"); a.optional=false; a.rmempty = false;
a = d:option(Value, "036", "Zone 36"); a.optional=false; a.rmempty = false;
a = d:option(Value, "037", "Zone 37"); a.optional=false; a.rmempty = false;
a = d:option(Value, "038", "Zone 38"); a.optional=false; a.rmempty = false;
a = d:option(Value, "039", "Zone 39"); a.optional=false; a.rmempty = false;
a = d:option(Value, "040", "Zone 40"); a.optional=false; a.rmempty = false;
a = d:option(Value, "041", "Zone 41"); a.optional=false; a.rmempty = false;
a = d:option(Value, "042", "Zone 42"); a.optional=false; a.rmempty = false;
a = d:option(Value, "043", "Zone 43"); a.optional=false; a.rmempty = false;
a = d:option(Value, "044", "Zone 44"); a.optional=false; a.rmempty = false;
a = d:option(Value, "045", "Zone 45"); a.optional=false; a.rmempty = false;
a = d:option(Value, "046", "Zone 46"); a.optional=false; a.rmempty = false;
a = d:option(Value, "047", "Zone 47"); a.optional=false; a.rmempty = false;
a = d:option(Value, "048", "Zone 48"); a.optional=false; a.rmempty = false;

d = m:section(TypedSection, "info", "Zones 49 to 64")
a = d:option(Value, "049", "Zone 49"); a.optional=false; a.rmempty = false;
a = d:option(Value, "050", "Zone 50"); a.optional=false; a.rmempty = false;
a = d:option(Value, "051", "Zone 51"); a.optional=false; a.rmempty = false;
a = d:option(Value, "052", "Zone 52"); a.optional=false; a.rmempty = false;
a = d:option(Value, "053", "Zone 53"); a.optional=false; a.rmempty = false;
a = d:option(Value, "054", "Zone 54"); a.optional=false; a.rmempty = false;
a = d:option(Value, "055", "Zone 55"); a.optional=false; a.rmempty = false;
a = d:option(Value, "056", "Zone 56"); a.optional=false; a.rmempty = false;
a = d:option(Value, "057", "Zone 57"); a.optional=false; a.rmempty = false;
a = d:option(Value, "058", "Zone 58"); a.optional=false; a.rmempty = false;
a = d:option(Value, "059", "Zone 59"); a.optional=false; a.rmempty = false;
a = d:option(Value, "060", "Zone 60"); a.optional=false; a.rmempty = false;
a = d:option(Value, "061", "Zone 61"); a.optional=false; a.rmempty = false;
a = d:option(Value, "062", "Zone 62"); a.optional=false; a.rmempty = false;
a = d:option(Value, "063", "Zone 63"); a.optional=false; a.rmempty = false;
a = d:option(Value, "064", "Zone 64"); a.optional=false; a.rmempty = false;

return m

















