@ECHO OFF
TITLE Java version switch

SET SPATH=%PATH%

SET M2_311=C:\software\maven\apache-maven-3.1.1
SET M2_325=C:\software\maven\apache-maven-3.2.5
SET M2_361=C:\software\maven\apache-maven-3.6.1


SET OPTION=%1
IF NOT "%OPTION%"=="" (
	GOTO VERSION;
)

:MENU
SET OPTION=NULL
CLS
ECHO Select an option:
ECHO   [ 311 ]	Maven 3.1.1 [%M2_311%]
ECHO   [ 325 ]	Maven 3.2.5 [%M2_325%]
ECHO   [ 361 ]	Maven 3.6.1 [%M2_361%]
ECHO   [ h  ] [ help  ]	print help
ECHO   [ q  ] [ exit  ]	exit prompt
ECHO ....................................
SET/P OPTION=Choose an option: 

:VERSION
IF "%OPTION%"=="311" (
	GOTO mvn311
)
IF "%OPTION%"=="325" (
	GOTO mvn325
)
IF "%OPTION%"=="361" (
	GOTO mvn361
)
IF "%OPTION%"=="help" (
	GOTO help;
)
IF "%OPTION%"=="h" (
	GOTO help
)
IF "%OPTION%"=="exit" (
	GOTO END;
)
IF "%OPTION%"=="q" (
	GOTO END
)
GOTO INVALID;
:help
ECHO Options:
ECHO   [ 311 ]	Maven 3.1.1 [%M2_311%]
ECHO   [ 325 ]	Maven 3.2.5 [%M2_325%]
ECHO   [ 361 ]	Maven 3.6.1 [%M2_361%]
ECHO   [ h  ] [ help  ]	print help
ECHO   [ q  ] [ exit  ]	exit prompt
ECHO ....................................
GOTO END
:mvn311
rem https://stackoverflow.com/questions/14954271/string-comparison-in-batch-file
SET M2_HOME=%M2_311%
SET PATH=%M2_HOME%\bin;%SPATH%
ECHO "switch to %M2_HOME%"
ECHO ****************************************
ECHO PATH:
ECHO %PATH%
ECHO ****************************************
mvn -version
ECHO ****************************************
GOTO END
:mvn325
SET M2_HOME=%M2_325%
SET PATH=%M2_HOME%\bin;%SPATH%
ECHO "switch to %M2_HOME%"
ECHO ****************************************
ECHO "PATH:"
ECHO "%PATH%"
ECHO ****************************************
mvn -version
ECHO ****************************************
GOTO END
:mvn361
SET M2_HOME=%M2_361%
SET PATH=%M2_HOME%\bin;%SPATH%
ECHO "switch to %M2_HOME%"
ECHO ****************************************
ECHO "PATH:"
ECHO "%PATH%"
ECHO ****************************************
mvn -version
ECHO ****************************************
GOTO END
:INVALID
SET PATH=%SPATH%
ECHO Not a valid option: %OPTION%
PAUSE
GOTO MENU
:END
