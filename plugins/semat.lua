--Created by: @To_My_Amigos
local function run(msg, matches)
  if matches[1]:lower() == 'semat' and not is_momod(msg) then
     send_document(get_receiver(msg), "./semat/member.webp", ok_cb, false)
    return 'You are a member 👶'
  end
   if matches[1]:lower() == 'semat' and is_sudo(msg) then
     send_document(get_receiver(msg), "./semat/sudo.webp", ok_cb, false)
    return 'You are my sudo 😊'
   end
    if matches[1]:lower() == 'semat' and is_owner(msg) then
     send_document(get_receiver(msg), "./semat/owner.webp", ok_cb, false)
    return 'You are a owner 🗣'
   end
  if matches[1]:lower() == 'semat' and is_momod(msg) then
     send_document(get_receiver(msg), "./semat/momod.webp", ok_cb, false)
    return 'You are a admin 👤'
  end
end
return {
   AntiSpam99 = {
"Created by: @To_My_Amigos",
"Powered by: @To_My_Amigos",
"⚠️CopyRight all right reserved⚠",
  },
  patterns = {
    "^[#!/]([Ss][Ee][Mm][Aa][Tt])$"
  }, 
  run = run 
}
--Create a folder called: semat
--Paste stickers with '.webp' format in this folder
--finish