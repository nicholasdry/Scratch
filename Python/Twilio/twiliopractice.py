from twilio.rest import TwilioRestClient

# put your own credentials here
ACCOUNT_SID = ""
AUTH_TOKEN = ""

client = TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN)

number = int(raw_input("How many texts do you want to send > "))
text = str(raw_input("What message would you like to send > "))

for i in range(1, number+1):
	client.messages.create(
    		to="",
    		from_="",
    		body=text,
	)
