# Bloco do Plano de Fundo 
# Defina a URL do blob e o caminho de destino - Screensaver
$blobUrl1 = "https://raw.githubusercontent.com/AnjosRamos/STO-SCREENSAVER/main/Screensaver-institucional.jpg"
$destinationPath1 = "C:\Screensaver\Screensaver-institucional.jpg"

# Baixe a IMAGEM DO Screensaver do blob e salve no caminho de destino
Invoke-WebRequest -Uri $blobUrl1 -OutFile $destinationPath1

# Bloco da Tela de bloqueio - CASO NÃO PRECISE COMENTE AS LINHAS ABAIXO.
# Defina a URL do blob e o caminho de destino - Screensaver
$blobUrl2 = "https://raw.githubusercontent.com/AnjosRamos/STO-SCREENSAVER/main/Screensaver-sazonal.jpg"
$destinationPath2 = "C:\Screensaver\Screensaver-sazonal.jpg"

# Baixe a IMAGEM DO Screensaver do blob e salve no caminho de destino
Invoke-WebRequest -Uri $blobUrl2 -OutFile $destinationPath2



