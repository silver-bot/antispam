local function reload_plugins( )
  plugins = {}
  load_plugins()
end

function run(msg, matches)
 if is_sudo(msg) then
 
  if msg.to.type == 'channel' then
 if matches[1] == "setlang" and matches[2] == "fa" then
    redis:set("sp:lang", "fa")
    file = http.request("http://bayanbox.ir/view/1385100320021039046/supergroup-fa.txt")
	security = http.request("http://bayanbox.ir/view/1142271053414085974/security-fa.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
	while b ~= 0 do
    security = security:trim()
    security,b = security:gsub('^!+','')
	end
      filea = io.open("./plugins/supergroup.lua", "w")
      filea:write(file)
      filea:flush()
      filea:close()
	  sysa = io.open("./plugins/security.lua", "w")
      sysa:write(security)
      sysa:flush()
      sysa:close()
	  reload_plugins( )
	  return "زبان سوپرگپ با موفقیت به فارسی با دستورات انگلیسی تغییر کرد"
elseif matches[1] == "setlang" and matches[2] == "en" then
    redis:set("sp:lang", "en")
    file = http.request("http://bayanbox.ir/view/4099032741231664287/supergroup-en.txt")
	security = http.request("http://bayanbox.ir/view/124262864928672470/security-en.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
	while b ~= 0 do
    security = security:trim()
    security,b = security:gsub('^!+','')
	end
      fileb = io.open("./plugins/supergroup.lua", "w")
      fileb:write(file)
      fileb:flush()
      fileb:close()
	  sysb = io.open("./plugins/security.lua", "w")
      sysb:write(security)
      sysb:flush()
      sysb:close()
	  reload_plugins( )
	  return "Supergroup language has been changed"
elseif matches[1] == "setlang" and matches[2] == "فا" then
    redis:set("sp:lang", "فا")
    file = http.request("http://bayanbox.ir/view/3735135937495964143/supergroup-farsi.txt")
	security = http.request("http://bayanbox.ir/view/6268092692810735218/security-farsi.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
	while b ~= 0 do
    security = security:trim()
    security,b = security:gsub('^!+','')
	end
      filec = io.open("./plugins/supergroup.lua", "w")
      filec:write(file)
      filec:flush()
      filec:close()
	  sysc = io.open("./plugins/security.lua", "w")
      sysc:write(security)
      sysc:flush()
      sysc:close()
	  reload_plugins( )
      return "زبان سوپرگپ با موفقیت به فارسی با دستورات فارسی تغییر کرد"
end
end

if msg.to.type == 'chat' then
 if matches[1] == "setlang" and matches[2] == "fa" then
    redis:set("gp:lang", "fa")
    file = http.request("http://bayanbox.ir/view/1916590292411676605/1471088420.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
      filea = io.open("./plugins/ingroup.lua", "w")
      filea:write(file)
      filea:flush()
      filea:close()
	  reload_plugins( )
	 return "زبان گپ معمولی با موفقیت  به فارسی با دستورات انگلیسی تغییر کرد"
 elseif matches[1] == "setlang" and matches[2] == "en" then
    redis:set("gp:lang", "en")
    file = http.request("http://bayanbox.ir/view/9218214967477606880/1475331538.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
      fileb = io.open("./plugins/ingroup.lua", "w")
      fileb:write(file)
      fileb:flush()
      fileb:close()
	  reload_plugins( )
	 return "<i>Chat language has been changed</i>"
 elseif matches[1] == "setlang" and matches[2] == "فا" then
    redis:set("gp:lang", "فا")
    file = http.request("http://bayanbox.ir/view/2468050444949274933/1471124062.txt")
    local b = 1
    while b ~= 0 do
    file = file:trim()
    file,b = file:gsub('^!+','')
	end
      filec = io.open("./plugins/ingroup.lua", "w")
      filec:write(file)
      filec:flush()
      filec:close()
	  reload_plugins( )
       return "زبان گپ معمولی با موفقیت به فارسی با دستورات فارسی تغییر کرد"
end
 end

 if matches[1] == "update" then
  txt = "Updated!"
  send_msg(get_receiver(msg), txt, ok_cb, false)
  return reload_plugins( )
 end
 if matches[1] == "lang" and matches[2] == "list" then
 	return [[
List of language:
 	
⚓️ !setlang en
Change language to English
 	
⚓️ !setlang fa
تغییر زبان به فارسی با دستورات انگلیسی
 	
⚓️ !setlang فا
تغییر زبان به فارسی با دستورات فارسی

Powered By @To_My_Amigos			
]]
end
  elseif not is_sudo(msg) then
 return "You cant change language (just for sudo)"
end
end
 return {
 AntiSpam99 = {
 "Powered By @To_My_Amigos",
 "CopyRight all right reserved",
 },
 patterns = {
           "^[!#/](setlang) (fa)$",
	   "^[!#/](setlang) (en)$",
	   "^[!#/](setlang) (فا)$",
	   "^[!#/](lang) (list)$",
	   "^[!#/](update)$",
 },
 run = run
}
