do
function run(msg, matches)
local fuse = '✉️ New Message : \n\n🆔 ID : ' .. msg.from.id .. '\n\n👤 Name : ' .. msg.from.print_name ..'\n\n🔢 Username : @' .. msg.from.username .. '\n\n📬 Message :\n' .. matches[1]
local fuses = '!printf user#id' .. msg.from.id
local text = matches[1]
local chat = "user#id"..179071599
--like : local chat = "channel#id"..12345678
local sends = send_msg(chat, fuse, ok_cb, false)
return 'Message Send!'
end
end
return {
description = "Feedback",
usage = "!feedback message",
patterns = {
"^[!#/][Ff]eedback (.*)$"
},
run = run
}