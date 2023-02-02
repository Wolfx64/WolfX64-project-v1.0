@echo off

:apr
title Acesso restrito somente para o user padrão da maquina
ver
echo COPY RIGHT (C)  WOLF X64  TODOS OS DIREITOS RESERVADOS
echo.
echo.
echo.
echo.
echo.
echo /=============================================================\
echo ^|bem vindo a central de comandos                              ^|
echo ^|leia as regras depois pressione S p/ iniciar ou N para fechar^|
echo \=============================================================/
echo.
echo.
echo                    :regras e cuidados a se tomar:
pause >nul


:introduction
color a
echo Seja bem-vindo me chamo Wolf e irei te ajudar a logar caso seja cadastrado :)
echo           "_____"
echo          "/\    \"
echo         "/::\____\"
echo        "/:::/    /"
echo       "/:::/   _/___"
echo      "/:::/   /\    \"
echo     "/:::/   /::\____\"
echo    "/:::/   /:::/    /"
echo   "/:::/   /:::/  _/___"
echo  "/:::/___/:::/  /\    \"
echo "|:::|   /:::/  /::\____\"
echo "|:::|__/:::/  /:::/    /"
echo "\::: \/:::/  /:::/    /"
echo  "\::::::/   /:::/    /"
echo   "\::::/___/:::/    /"
echo    "\:::\__/:::/    /"
echo     "\::::::::/    /"
echo      "\::::::/    /"
echo       "\::::/    /"
echo        "\::/____/"

:int
set /p confirm=  Press W and confirm with enter to continue: 
if "%confirm%"== "W" goto home
if "%confirm%"== "w" goto home
if "%confirm%"== "cfg" goto configsexe

goto int 


:home
Login tab
mode 64,20
cls
color 7
echo                     ________________________
echo                       WolfX64 Diz: OLA ^<3 
echo                     ________________________

echo   /==========================================================\
echo  /                                                            \
echo  \ OLA, DIGITE AS CREDENCIAIS PARA VERIFICARMOS SE VOCE E O   /
echo  / ADMINISTRADOR                                              \
echo  \                                                            /
echo   \==========================================================/
echo.
set /p usr="| USER > "
if "%usr%"== "W" color 6 & goto pass  
msg * WOLF AVISA!! sua senha ou usuario nao estao corretas :( & color 4
set /p msg1=APERTE ENTER PARA TENTAR NOVAMENTE
echo %msg1%
goto home

:pass
color 6
set /p passwd="| PASSWORD > "
if "%passwd%"=="wolfx64:)" msg /TIME 10 * seja bem vindo WolfX64!!! Fico feliz em ve-lo:) hoje e %date%. & cls & goto loop
msg /TIME 5 * ERRO!! :( VOCE REALMENTE É O USUARIO? PROVE-ME NOVAMENTE. & color 4
set /p msg2=APERTE ENTER PARA TENTAR NOVAMENTE.
echo %msg2%
goto pass

:loop
title 
mode 237,55
cls
color 3
echo (C) WOLF X64  TODOS OS DIREITOS RESERVADOS
echo.

:logo
echo           "_____"
echo          "/\    \"
echo         "/::\____\"
echo        "/:::/    /"
echo       "/:::/   _/___"
echo      "/:::/   /\    \"
echo     "/:::/   /::\____\"
echo    "/:::/   /:::/    /"
echo   "/:::/   /:::/  _/___"
echo  "/:::/___/:::/  /\    \"
echo "|:::|   /:::/  /::\____\"
echo "|:::|__/:::/  /:::/    /"
echo "\::: \/:::/  /:::/    /"
echo  "\::::::/   /:::/    /"
echo   "\::::/___/:::/    /"
echo    "\:::\__/:::/    /"
echo     "\::::::::/    /"
echo      "\::::::/    /"
echo       "\::::/    /"
echo        "\::/____/"
echo.


:iniexe
echo hoje e ^| %date% ^|
echo ^______________________ 
echo agora sao %time%
echo ^______________________
echo.
echo.

:execution
set /p ir="Wolfx64@Windows [ %cd% ~]>>>"
%ir%
if "%ir%"=="cd\" msg * A RAIZ SO PODE SER ACESSADA EM MODO ROOT. & cd Users & cd %username%
if "%ir%"=="CD\" msg * A RAIZ SO PODE SER ACESSADA EM MODO ROOT. & cd Users & cd %username%
if "%ir%"=="ls" dir 
if "%ir%"=="clear" cls
if "%ir%"=="rst" goto loop
if "%ir%"=="cd .." color 20 
if "%ir%"=="C:" msg * a raiz so pode ser acessada em modo root. & cd Users & cd %username%
if "%ir%"=="sudo su" goto rootacess 
if "%ir%"== "wlf install git" echo "ERROR! YOUR NEED OF ROOT ACESS TO INSTALL" 
echo.
goto execution

:dato
set dato=%date%
echo %dato%
goto execution

:configsexe
title Settings
C:
cls
mode 70,20
color 17
echo ____________________________________
echo ^|Bem-vindo a CENTRAL DE CONFIGURACOES^|
echo ^|------------------------------------^|

:configs
set /p ir="configs@%computername% ( %cd% )>"
%ir%
echo.
goto configs

:rootacess
title log root
mode 247,20
set /p pass="[digite a senha de acesso p/ liberar o acesso root, caso nao saiba entre em contato com o desenvolvedor]: "
if "%pass%"== "windows" goto rootaviso
echo * PASSWORD INVALIDO.
goto rootacess
  
:rootaviso
title Root Acess
mode 237,55
color 6
echo                                                                               WARNING
echo QUAISQUER COMANDOS DIGITADOS DE CERTO SERAO DE SUA RESPONSABILIDADE, O DESENVOLVEDOR
echo DA INTERFACE NAO TEM COM QUE ARCAR COM OS ERROS DOS USUARIOS, POR ISSO EU WOLF TE RECOMENDO A NAO 
echo MECHER COM O ACESSO ROOT A MENOS Q VC SAIBA O QUE ESTA FAZENDO, DE JA TE AGRADECO POR LER E SE CONCIENTIZAR.
echo.

:rootconfirm
set /p act="VOCE TEM CERTEZA QUE QUERES CONTINUAR NO ROOT DIGITE (S PARA EU ACEITO)/(N PARA NAO ACEITO) E DEPOIS CONFIRME COM ENTER:>"
if "%act%"=="S" goto rootexec
if "%act%"=="s" goto rootexec
if "%act%"=="n" goto logo
if "%act%"=="N" goto logo
color 4
echo.
goto errorconfirm

:errorconfirm
cls
echo "VOCE TEM CERTEZA QUE QUERES CONTINUAR NO ROOT DIGITE (S PARA EU ACEITO)/(N PARA NAO ACEITO) E DEPOIS CONFIRME COM ENTER:>"
echo. 
set /p errormsg= "ERRO :(    OPCAO INVALIDA, CLIQUE QUALQUER TECLA E TENTE NOVAMENTE" & goto rootaviso
cls
goto rootaviso

:rootexec
cls
color
echo ACESS GRANTED!! WELCOME TO ROOT ACESS %username%, PRESS ANY KEY TO STARTED NOW & pause >nul
cls
echo 

:rootInicommands
cls
color 04
echo Wolf Avisa:\^> (VOCE ESTA EM MODO ROOT)
echo.
echo                    @@@@@@@@@@@@@@@@@@@                   `
echo                @@@@@@             @@@@@@@                
echo              @@@@                       @@@@              
echo             @@@                             @@            
echo            @@                                @@           
echo          @@                     `           @@          `
echo          @@                                   @@          
echo          @@ @@                             @@ @@          
echo          @@ @@                             @@  @          
echo          @@ @@                             @@  @          
echo          @@  @@                            @@ @@          
echo          @@  @@                           @@  @@          
echo           @@ @@   @@@@@@@@     @@@@@@@@   @@ @@           
echo            @@@@ @@@@@@@@@@     @@@@@@@@@@ @@@@@           
echo             @@@ @@@@@@@@@@     @@@@@@@@@@ @@@             
echo    @@@       @@  @@@@@@@@       @@@@@@@@@  @@      @@@@   
echo   @@@@@     @@   @@@@@@@   @@@   @@@@@@@   @@     @@@@@@  
echo   @@   @@    @@     @@@    @@@@@    @@@     @@    @@   @@  
echo @@@    @@@@  @@          @@@@@@@          @@  @@@@     @@@ 
echo @@         @@@@@@@@       @@@@@@@       @@@@@@@@@        @@
echo @@@@@@@@@     @@@@@@@@    @@@@@@@    @@@@@@@@      @@@@@@@@
echo  @@@@ @@@@@      @@@@@              @@@ @@     @@@@@@ @@@ 
echo          @@@@@@  @@@  @@           @@  @@@  @@@@@@        
echo             @@@@@@ @@ @@@@@@@@@@@ @@ @@@@@@              
echo                  @@ @@ @ @ @ @ @ @ @ @ @@                 
echo                @@@@  @ @ @ @ @ @ @ @   @@@@@              
echo            @@@@@ @@   @@@@@@@@@@@@@   @@ @@@@@            
echo    @@@@@@@@@@     @@                 @@      @@@@@@@@@    
echo   @@           @@@@@@@             @@@@@@@@          @@   
echo    @@@     @@@@@     @@@@@@@@@@@@@@@     @@@@@     @@@    
echo      @@   @@@           @@@@@@@@@           @@@   @@      
echo      @@  @@                                   @@  @@      
echo       @@@@                                     @@@@ 
echo.      

:FunctionRootloop
set /p ir="root@%computername% [ %cd% ]>"
%ir%
if "%ir%"=="ls" dir 
if "%ir%"=="clear" cls & echo  Wolf Avisa:\^> (VOCE ESTA EM MODO ROOT)
if "%ir%"=="rset" msg * "SUA SECAO ROOT FOI RESETADA COM SUCESSO!!" & goto rootInicommands
if "%ir%"=="contatos-do-dev" goto linkmidia
if "%ir%"=="wlf install git" goto gitinstalationmodule
if "%ir%"=="wlf install update" goto updateinstall
echo.
goto FunctionRootloop

:linkmidia
cls
echo ola escolha uma opcao
echo "[1] Instagram"
echo "[2] Email"
echo "[3] Facebook"
echo "[4] Sair"
set /p op="ESCOLHA O NUMERO DA OPCAO DESEJADA: "
if "%op%"=="1" goto instagram
if "%op%"=="2" goto email
if "%op%"=="3" goto facebook
if "%op%"=="4" goto rootInicommands

:instagram
echo instagram: @new_shelbyyy
set /p link="DIGITE IR PARA ACESSAR O INSTAGRAM DO DESENVOLVEDOR"
if "%link%"=="IR" start chrome "https://www.instagram.com/new_shelbyyy/?next=%2Fdirect%2Finbox%2F"
goto FunctionRootloop

:facebook
echo shelby shelby
set /p link= ""
if "%link%"=="IR" start chrome "" 
goto FunctionRootloop 

:email
echo favoritotv025@gmail.com
goto FunctionRootloop

:mediafire
echo
set /p link=""
if "%link%"=="IR" start chrome ""
goto FunctionRootloop

:github
set link=""
if "%link%"=="IR" start chrome ""
goto FunctionRootloop 

:downloadsarea
echo Ola, Seja bem vindo a area de downloads aqui disponibillizarei varios links de downloads de novos projetos:
echo.
echo.
echo 1.
set /p

:updateinstall
echo escolha o metodo de instalação
echo [1] (Manual)
echo [2] (Programada)
echo [0] (sair)
set /p opc="Digite o numero da  opcao: ^>"
if "%opc%"=="1" start chrome "https://www.mediafire.com/folder/ehsli385li0wf/Arquivos-bat" & set /p msginstall= "assim q instalar o update clique qualquer tecla para voltar" & if  "%msginstall%"=="" msg * "VOCE ESCOLHEU VOLTAR." & goto logo
if "%opc%"=="2" git clone https://github.com/

:gitinstalationmodule
cls 
echo.
echo
echo                   mmm                 
echo                 mmmmmmm                
echo                  mmmmmmmmm              
echo             mmm    mmmmmmmmm           
echo           mmmmmm    mmmmmmmmmm          
echo          mmmmmmmmm    mmmmmmmmmm        
echo        mmmmmmmmmm       mmmmmmmmm      
echo      mmmmmmmmmmmmm       mmmmmmmmmm    
echo    mmmmmmmmmmmmmmmm   m    mmmmmmmmmm  
echo  mmmmmmmmmmmmmmmmmm   mmm     mmmmmmmmm
echo mmmmmmmmmmmmmmmmmmm   mmm      mmmmmmmmm
echo  mmmmmmmmmmmmmmmmmm   mmmm    mmmmmmmmm
echo    mmmmmmmmmmmmmmmm   mmmmmmmmmmmmmmm  
echo      mmmmmmmmmmmmm    mmmmmmmmmmmmm    
echo        mmmmmmmmmm      mmmmmmmmm      
echo          mmmmmmmmm     mmmmmmmm        
echo            mmmmmmmmmmmmmmmmmm          
echo              mmmmmmmmmmmmmm            
echo                mmmmmmmmmm              
echo                  mmmmmm              
echo.
:gitInsFunctionsmenu
color 05
echo Seja Bem-vindo digite o numero da opcao para fazer uma das acoes 
echo ^>(1) instalar.
echo ^>(0) sair.
set /p install="Digite a op desejada aqui: "
if "%install%"=="1" cd git-install-module & start git.exe & msg * "confirme com sim para fazer o download" & goto logo
if "%install%"=="0" goto logo
msg * "Opcao invalida"
goto gitinstalationmodule