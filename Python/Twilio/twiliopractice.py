from twilio.rest import TwilioRestClient

# put your own credentials here
ACCOUNT_SID = "AC684184f26e7ac3088a17c73be11536a8"
AUTH_TOKEN = "e0f237315288cc5ca43eb30e3d2655b5"

client = TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN)

number = int(raw_input("How many texts do you want to send > "))
text = str(raw_input("What message would you like to send > "))

for i in range(1, number+1):
	client.messages.create(
    		to="+19736990228",
    		from_="+18566197129",
    		body=text,
	)
