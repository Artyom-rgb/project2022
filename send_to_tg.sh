#!/bin/bash

TOKEN='5357586037:AAFtl_coNwaH8fd55uXuHpQewlMFE3z6aGA'
CHATID='477012363'

 curl -s -X POST https://api.telegram.org/bot${TOKEN}/sendPhoto -F chat_id=${CHATID} -F photo="@png/temp_0.5.png"
