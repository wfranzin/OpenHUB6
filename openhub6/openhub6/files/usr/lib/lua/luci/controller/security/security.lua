module("luci.controller.security.security", package.seeall)
 function index()
     entry({"admin", "security"}, firstchild(), "Security", 60).dependent=false
     entry({"admin", "security", "partition"}, cbi("security-module/security-partition"), "Partitions", 1)
     entry({"admin", "security", "zone"}, cbi("security-module/security-zone"), "Zones", 2)
     entry({"admin", "security", "user"}, cbi("security-module/security-user"), "Users", 3)
     entry({"admin", "security", "event"}, cbi("security-module/security-event"), "Events", 4)
     entry({"admin", "security", "pushover"}, cbi("security-module/security-pushover"), "Pushover", 5)
end
