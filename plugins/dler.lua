function run(msg, matches)
 
 if matches[1] == 'dler' then
 
  if matches[3] == '.zip' then
   link = matches[2]..'.zip'
   format = '.zip'
   s = 'z'
   file = download_to_file(link, 'dler'..format)
  elseif matches[3] == '.rar' then
   link = matches[2]..'.rar'
   format = '.rar'
   s = 'r'
   file = download_to_file(link, 'dler'..format)
  elseif matches[3] == '.jpg' then
   link = matches[2]..'.jpg'
   format = '.jpg'
   s = 'j'
   file = download_to_file(link, 'dler'..format)
  elseif matches[3] == '.png' then
   link = matches[2]..'.png'
   format = '.png'
   s = 'p'
   file = download_to_file(link, 'dler'..format)
  elseif matches[3] == '.gif' then
   link = matches[2]..'.gif'
   format = '.gif'
   s = 'g'
   file = download_to_file(link, 'dler'..format)
  elseif matches[3] == '.apk' then
   link = matches[2]..'.apk'
   format = '.apk'
   s = 'a'
   file = download_to_file(link, 'dler'..format)
  elseif matches[3] == '.mp3' then
   link = matches[2]..'.mp3'
   format = '.mp3'
   s = 'm'
   file = download_to_file(link, 'dler'..format)
  elseif matches[3] == '.AVI' then
   link = matches[2]..'.AVI'
   format = '.AVI'
   s = 'avi'
   file = download_to_file(link, 'dler'..format)
  elseif matches[3] == '.ogg' then
   link = matches[2]..'.ogg'
   format = '.ogg'
   s = 'o'
   file = download_to_file(link, 'dler'..format)
   elseif matches[3] == '.exe' then
   link = matches[2]..'.exe'
   format = '.exe'
   s = 'exe'
   file = download_to_file(link, 'dler'..format)
  elseif matches[3] == '.txt' then
   link = matches[2]..'.txt'
   format = '.txt'
   s = 't'
   file = download_to_file(link, 'dler'..format)
  elseif matches[3] == '.aspx' then
   link = matches[2]..'.aspx'
   format = '.aspx'
   s = 'as'
   file = download_to_file(link, 'dler'..format)
  elseif matches[3] == '.html' then
   return 'این یک لینک غیر مستقیم است، لطفا از لینک مستقیم استفاده کنید.'
  elseif matches[2] == 'http://www.aparat.com/v/' and matches[3] then
   vidlink = 'http://www.aparat.com/v/'..matches[3]
   file = download_to_file(vidlink, 'dler.mp4')
   s = 'apa'
  end
 end
 
  if s == 'j' or s == 'g' or s == 'as' then
send_photo('channel#id'..msg.to.id,file,ok_cb,false)

send_photo('chat#id'..msg.to.id,file,ok_cb,false)
  end

  if s == 'p' or s == 'a' or s == 't' or s == 'z' or s == 'r' or s == 'exe' then
send_document('channel#id'..msg.to.id,file,ok_cb,false)

send_document('chat#id'..msg.to.id,file,ok_cb,false)
  end
  
  if s == 'o' or s == 'm' or s == 'avi' then
send_audio('channel#id'..msg.to.id,file,ok_cb,false)

send_audio('chat#id'..msg.to.id,file,ok_cb,false)
  end
  
  if s == 'apa' then send_video('channel#id'..msg.to.id,file,ok_cb,false)

send_video('chat#id'..msg.to.id,file,ok_cb,false)
  end
end
return {
 description = "download file with a link",
 usage = "!dler (link)",
 AntiSpam99 = {
 "Created by: @To_My_Amigos",
 "Powered by: @To_My_Amigos",
 "CopyRight all right reserved",
 "کپی بدون ذکر منبع حرام است",
 },
 patterns = {
  "^[!#/](dler) (.*)(.zip)$",
  "^[!#/](dler) (.*)(.rar)$",
  "^[!#/](dler) (.*)(.jpg)$",
  "^[!#/](dler) (.*)(.png)$",
  "^[!#/](dler) (.*)(.gif)$",
  "^[!#/](dler) (.*)(.apk)$",
  "^[!#/](dler) (.*)(.mp3)$",
  "^[!#/](dler) (.*)(.ogg)$",
  "^[!#/](dler) (.*)(.txt)$",
  "^[!#/](dler) (.*)(.exe)$",
  "^[!#/](dler) (.*)(.AVI)$",
  "^[!#/](dler) (.*)(.aspx)$",
  "^[!#/](dler) (.*)(.html)$",
  "^[!#/](dler) (http://www.aparat.com/v/)(.*)$",
 },
 run = run,
}