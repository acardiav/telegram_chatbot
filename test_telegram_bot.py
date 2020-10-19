import telegram

my_token = '1395454067:AAHhzqb5_tpUlZHQ3Rmnhd-W2UasckqFARI'

bot = telegram.Bot(token = my_token)
bot.setWebhook()

# for update in bot.getUpdates():
#     received_text = update.message.text
#     if received_text == "일정":
#         text = "https://hongik.ac.kr"
#
#         chat_id = update.message.chat.id  #가장 최근에 온 메세지의 아이디를 가져옴
#         bot.sendMessage(chat_id=chat_id, text=text)