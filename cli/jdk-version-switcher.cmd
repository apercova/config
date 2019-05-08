@ECHO OFF
TITLE Java version switch

SET SPATH=%PATH%

SET JDK_5=C:\software\java\jdk1.5.0_22
SET JDK_6=C:\software\java\jdk1.6.0_45
SET JDK_7=C:\software\java\jdk1.7.0_80
SET JDK_8=C:\software\java\jdk1.8.0_181
SET JDK_10=C:\software\java\jdk-10.0.2
SET JDK_11=C:\software\java\jdk-11

SET OPTION=%1
IF NOT "%OPTION%"=="" (
	GOTO VERSION;
)

:MENU
SET OPTION=NULL
CLS
ECHO Select an option:"
ECHO   [ 5  ] [ jdk5  ]	JDK 1.5 [%JDK_5%]
ECHO   [ 6  ] [ jdk6  ]	JDK 1.6 [%JDK_6%]
ECHO   [ 7  ] [ jdk7  ]	JDK 1.7 [%JDK_7%]
ECHO   [ 8  ] [ jdk8  ]	JDK 1.8 [%JDK_8%]
ECHO   [ 10 ] [ jdk10 ]	JDK 10  [%JDK_10%]
ECHO   [ 11 ] [ jdk11 ]	JDK 11  [%JDK_11%]
ECHO   [ q  ] [ exit  ]	exit prompt
ECHO ....................................
SET/P OPTION=Choose an option: 

:VERSION
IF "%OPTION%"=="5" (
	GOTO jdk5
)
IF "%OPTION%"=="jdk5" (
	GOTO jdk5
)
IF "%OPTION%"=="6" (
	GOTO jdk6
)
IF "%OPTION%"=="jdk6" (
	GOTO jdk6
)
IF "%OPTION%"=="7" (
	GOTO jdk7
)
IF "%OPTION%"=="jdk7" (
	GOTO jdk7
)
IF "%OPTION%"=="8" (
	GOTO jdk8
)
IF "%OPTION%"=="jdk8" (
	GOTO jdk8
)
IF "%OPTION%"=="10" (
	GOTO jdk10
)
IF "%OPTION%"=="jdk10" (
	GOTO jdk10
)
IF "%OPTION%"=="11" (
	GOTO jdk11
)
IF "%OPTION%"=="jdk11" (
	GOTO jdk11
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
ECHO Options:"
ECHO   [ 5  ] [ jdk5  ]	JDK 1.5 [%JDK_5%]
ECHO   [ 6  ] [ jdk6  ]	JDK 1.6 [%JDK_6%]
ECHO   [ 7  ] [ jdk7  ]	JDK 1.7 [%JDK_7%]
ECHO   [ 8  ] [ jdk8  ]	JDK 1.8 [%JDK_8%]
ECHO   [ 10 ] [ jdk10 ]	JDK 10  [%JDK_10%]
ECHO   [ 11 ] [ jdk11 ]	JDK 11  [%JDK_11%]
ECHO   [ q  ] [ exit  ]	exit prompt
ECHO ....................................
GOTO END
:jdk5
rem https://stackoverflow.com/questions/14954271/string-comparison-in-batch-file
SET JAVA_HOME=%JDK_5%
SET PATH=%JAVA_HOME%\bin;%SPATH%
ECHO "switch to %JAVA_HOME%"
ECHO ****************************************
ECHO PATH:
ECHO %PATH%
ECHO ****************************************
java -version
ECHO ****************************************
GOTO END
:jdk6
SET JAVA_HOME=%JDK_6%
SET PATH=%JAVA_HOME%\bin;%SPATH%
ECHO "switch to %JAVA_HOME%"
ECHO ****************************************
ECHO "PATH:"
ECHO "%PATH%"
ECHO ****************************************
java -version
ECHO ****************************************
GOTO END
:jdk7
SET JAVA_HOME=%JDK_7%
SET PATH=%JAVA_HOME%\bin;%SPATH%
ECHO "switch to %JAVA_HOME%"
ECHO ****************************************
ECHO "PATH:"
ECHO "%PATH%"
ECHO ****************************************
java -version
ECHO ****************************************
GOTO END
:jdk8
SET JAVA_HOME=%JDK_8%
SET PATH=%JAVA_HOME%\bin;%SPATH%
ECHO "switch to %JAVA_HOME%"
ECHO ****************************************
ECHO "PATH:"
ECHO "%PATH%"
ECHO ****************************************
java -version
ECHO ****************************************
GOTO END
:jdk10
SET JAVA_HOME=%JDK_10%
SET PATH=%JAVA_HOME%\bin;%SPATH%
ECHO "switch to %JAVA_HOME%"
ECHO ****************************************
ECHO "PATH:"
ECHO "%PATH%"
ECHO ****************************************
java -version
ECHO ****************************************
GOTO END
:jdk11
SET JAVA_HOME=%JDK_11%
SET PATH=%JAVA_HOME%\bin;%SPATH%
ECHO "switch to %JAVA_HOME%"
ECHO ****************************************
ECHO "PATH:"
ECHO "%PATH%"
ECHO ****************************************
java -version
ECHO ****************************************
GOTO END
:INVALID
SET PATH=%SPATH%
ECHO Not a valid option: %OPTION%
PAUSE
GOTO MENU
:END
