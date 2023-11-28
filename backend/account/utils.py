# from twilio.rest import Client


# def twilio_send_sms(message, to):
#     twilio_client = Client(settings.TWILIO_ACCOUNT_SID, settings.TWILIO_AUTH_TOKEN)
#     message = twilio_client.messages.create(
#         body=message,
#         from_="+13234193590",
#         to="+22961158910",  # to
#     )
#     print(message.sid)
