@echo off
title Comprar mim
mode 78,24
color 3

::Definir Diretório Raiz
cd /d %~dp0

:: Cria a variável ESC para ativar os códigos de cores ANSI
for /F "tokens=1 delims=#" %%a in ('"prompt #$E# & echo on & for %%b in (1) do rem"') do set "ESC=%%a"

:: Código das Cores
set "VERMELHO=%ESC%[31m"
set "VERDE=%ESC%[32m"
set "AMARELO=%ESC%[33m"
set "AZUL=%ESC%[34m"

set "AZULMA=%ESC%[36m"
set "RESET=%ESC%[0m"

set "opcao=%ESC%[05m"
set "opcao2=%ESC%[02m"
set "opcao3=%ESC%[04m"
set "opcao4=%ESC%[05m"
:menur
cls
echo  ____________________________________________________________________________
echo  ^|     ________________________________________________________________     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^| %AZUL%[%opcao%1%RESET%%AZUL%]%RESET% iniciar ia de tiver instalador                           %AZULMA%^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^| %AMARELO%[%opcao%w%RESET%%AMARELO%] instalador                                               %AZULMA%^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^| %AZUL%GitHub %opcao3%%AZULMA%ryanribeironep33%RESET% [%VERDE%%opcao%Atulizar%RESET%] Codigo de Atulizar        %AZULMA%^|     ^|
echo  ^|     ^|______________________________________________________________^|     ^|
echo  ^|__________________________________________________________________________^|
echo                              /   ^|         ^|   \
echo                              \_________________/
set /p eppIa="Digite -> "
if "%eppIa%" == "w" goto BaixarOnline
if "%eppIa%" == "1" goto epp1
if "%eppIa%" == "Atulizar" goto Atulizar
goto menu




:epp1
cls
cd "stable-diffusion\stable-diffusion-webui"
git pull

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--lowvram --opt-sdp-attention --lowram --xformers
set STABLE_DIFFUSION_REPO=https://github.com
::varm 6gb "--lowvram" ,+8gb "--medvram"
::set STABLE_DIFFUSION_REPO=https://github.com/w-e-w/stablediffusion.git
call webui.bat

goto menu









goto menu
:BaixarOnline
title Baixar instalador Online
%RESET%
cls
echo  ____________________________________________________________________________
echo  ^|     ________________________________________________________________     ^|
echo  ^|     ^| %AMARELO%Baixar e instalador Online                                   %RESET%^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^| %AZULMA%necessita tiver instalado o.                                 %RESET%^|     ^|
echo  ^|     ^| %VERDE%%opcao3%python%RESET% 3.10.6 compatilidade IA e o %opcao3%%VERDE%Git%RESET%                       %RESET%^|     ^|
echo  ^|     ^| [%VERDE%%opcao%1%RESET%] Abrir na Navegador e Baixar instalador %AMARELO%Manualente no pc  %RESET%^|     ^|
echo  ^|     ^| [%VERDE%%opcao%2%RESET%] Baixar e instalador                                      ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^| [%VERDE%%opcao%3%RESET%] Baixar e instalador a IA o vai Baixar                   %RESET% ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^| .%opcao3%%VERDE%Stable Diffusion Web UI%RESET%  40.9MB '%opcao2%e uma interface grefica%RESET%'   %RESET%^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^| .%opcao3%%VERDE%CLIP biblioteca%RESET%          4.11MB '%opcao2%pacote de codigo da OpenAI%RESET%'%RESET%^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^| .%opcao3%%VERDE%Stable Diffusion v1.5%RESET% 3.99GB'%opcao2%Modelu peso otimizada e enxuta%RESET%'%RESET%^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|                                                              ^|     ^|
echo  ^|     ^|______________________________________________________________^|     ^|
echo  ^|__________________________________________________________________________^|
echo                              /   ^|         ^|   \
echo                              \_________________/
set /p instalador="Digite -> "
if "%instalador%" == "0" goto menur
if "%instalador%" == "1" goto cph1
if "%instalador%" == "2" goto cph2
if "%instalador%" == "3" goto cph3
goto menur

:cph1
start https://www.python.org/downloads/release/python-3106/
start https://git-scm.com/install/windows
goto menu


:cph2
curl -L -o "python-3.10.6v.exe" "https://www.python.org/ftp/python/3.10.6/python-3.10.6-amd64.exe" -w "\nDownload concluido!\nArquivo: %%{filename_effective}\nTamanho: %%{size_download} bytes\nVelocidade: %%{speed_download} B/s\nTempo total: %%{time_total}s\n"
curl -L -o "Git.exe" "https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/Git-2.56.0.4-64-bit.exe" -w "\nDownload concluido!\nArquivo: %%{filename_effective}\nTamanho: %%{size_download} bytes\nVelocidade: %%{speed_download} B/s\nTempo total: %%{time_total}s\n"
start "" "Git.exe"
start "" "python-3.10.6v.exe"
goto menu







:: AUTOMATIC1111
goto menur
:cph3
cls
mkdir Stable-diffusion
cd Stable-diffusion

git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
cd stable-diffusion-webui
git switch dev
git pull

:: biblioteca
cls
color 0f
cd Stable-diffusion\stable-diffusion-webui\
curl -L -o "CLIP-d50d76daa670286dd6cacf3bcd80b5e4823fc8e1.zip" "https://github.com/openai/CLIP/archive/d50d76daa670286dd6cacf3bcd80b5e4823fc8e1.zip" -w "\nDownload concluido!\nArquivo: %%{filename_effective}\nTamanho: %%{size_download} bytes\nVelocidade: %%{speed_download} B/s\nTempo total: %%{time_total}s\n"
echo.

:: modelu
cd ../../
cd Stable-diffusion\stable-diffusion-webui\models\Stable-diffusion\
curl -L -o "Stable-Diffusion-v1.5.safetensors" "https://huggingface.co/stable-diffusion-v1-5/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.safetensors?download=true" -w "\nDownload concluido!\nArquivo: %%{filename_effective}\nTamanho: %%{size_download} bytes\nVelocidade: %%{speed_download} B/s\nTempo total: %%{time_total}s\n"



























cd Stable-diffusion\stable-diffusion-webui\
git pull
set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--lowvram --opt-sdp-attention --lowram --xformers
set STABLE_DIFFUSION_REPO=https://github.com
::varm 6gb "--lowvram" ,+8gb "--medvram"
::set STABLE_DIFFUSION_REPO=https://github.com/w-e-w/stablediffusion.git
call webui.bat
goto menur












:Atulizar
::curl -L -o "" "" -w "\nDownload concluido!\nArquivo: %%{filename_effective}\nTamanho: %%{size_download} bytes\nVelocidade: %%{speed_download} B/s\nTempo total: %%{time_total}s\n"

goto menur














echo ### ERROR ###
pause nul >nul
:menu