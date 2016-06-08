from twilio.rest import TwilioRestClient

# put your own credentials here
ACCOUNT_SID = "loljk"
AUTH_TOKEN = "loljk"

client = TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN)

client.messages.create(
    to="+loljk",
    from_="+loljk",
    body="This is a test message",
)
