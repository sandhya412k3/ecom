import smtplib
from email.message import EmailMessage
def send_mail(to,body,subject):
    server=smtplib.SMTP_SSL('smtp.gmail.com',465)
    server.login('sandhya412k3@gmail.com','ymkq kdje qmne pdrg')
    msg=EmailMessage()
    msg['FROM']='sandhya412k3@gmail.com'
    msg['To']=to
    msg['SUBJECT']=subject
    msg.set_content(body)
    msg.set_content(body)
    server.send_message(msg)
    server.close()