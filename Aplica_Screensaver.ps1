#PARTE 1 - Prepara o ambiente

# Defina as URLs corrigidas dos arquivos no Blob Storage
# https://raw.githubusercontent.com -> ESSE é padrão o Repositorio tem que estar publico;
$ps1URL = "https://raw.githubusercontent.com/AnjosRamos/STO-SCREENSAVER/main/Download_Screensaver.ps1"
$vbsURL = "https://raw.githubusercontent.com/AnjosRamos/STO-SCREENSAVER/main/Invok-Download_Screensaver.vbs"
$scrURL = "https://raw.githubusercontent.com/AnjosRamos/STO-SCREENSAVER/main/ArquivoSCRAnjos.scr"
$image1URL = "https://raw.githubusercontent.com/AnjosRamos/STO-SCREENSAVER/main/Screensaver-institucional.jpg"
$image2URL = "https://raw.githubusercontent.com/AnjosRamos/STO-SCREENSAVER/main/Screensaver-sazonal.jpg" #Comente essa linha se não tiver Screensaver sazonal#

# Defina os caminhos de destino para os arquivos
$ScreensaverFolder = "C:\Screensaver"
$ps1Destination = "$ScreensaverFolder\Download_Screensaver.ps1"
$vbsDestination = "$ScreensaverFolder\Invok-Download_Screensaver.vbs"
$scrDestination = "$screensaverFolder\ArquivoSCRAnjos.scr"
$image1Destination = "$ScreensaverFolder\Screensaver-institucional.jpg"
$image2Destination = "$ScreensaverFolder\Screensaver-sazonal.jpg" #Comente essa linha se não tiver Screensaver sazonal#

# Verifique se a pasta C:\Screensaver existe, caso contrário, crie-a e oculte-a
if (-Not (Test-Path -Path $ScreensaverFolder)) {
    New-Item -ItemType Directory -Path $ScreensaverFolder
    attrib +h $ScreensaverFolder # Define a pasta como oculta
}

# Faça o download do arquivo Download_Screensaver.ps1 e salve-o no caminho C:\Screensaver
Invoke-WebRequest -Uri $ps1URL -OutFile $ps1Destination

# Faça o download do arquivo Invok-Download_Screensaver.vbs e salve-o na pasta de Startup
Invoke-WebRequest -Uri $vbsURL -OutFile $vbsDestination

# Faça o download do arquivo ArquivoSCRAnjos.scr e salve-o na pasta de Startup
Invoke-WebRequest -Uri $scrURL -OutFile $scrDestination

# Faça o download da imagem de Plano de Fundo e salve-a no caminho C:\Screensaver
Invoke-WebRequest -Uri $image1URL -OutFile $image1Destination

# Faça o download da imagem da Tela de Bloqueio e salve-a no caminho C:\Screensaver
Invoke-WebRequest -Uri $image2URL -OutFile $image2Destination #Comente essa linha se não tiver Screensaver sazonal#



# PARTE 6 - Ativa na inicialização

# Caminho do arquivo .vbs
$vbsFilePath = "C:\Screensaver\Invok-Download_Screensaver.vbs"

# Caminho da chave de registro para inicialização do sistema
$registryPath = "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run"

# Nome do valor no registro para identificar o script
$registryName = "DownloadScreensaver"

# Adicionar entrada no registro para executar o .vbs na inicialização
New-ItemProperty -Path $registryPath -Name $registryName -Value $vbsFilePath -PropertyType "String" -Force

