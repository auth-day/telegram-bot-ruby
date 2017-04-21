require 'telegram/bot'

KILLJAVA="pkill java"
TOKEN = ""

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when "kill"
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "It has killed"+ `pkill named`
      )
    else
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "I don't get it"
      )
    end
  end
end
