

set SOURCE_URL=https://raw.githubusercontent.com/antlr4ide/antlr4ide-eclipse-release/master
set TARGET_URL=file:/webdev/mirror-artifacts

eclipsec.exe -nosplash -verbose -raw -writeMode clean ^
 -application org.eclipse.equinox.p2.artifact.repository.mirrorApplication ^
 -source %SOURCE_URL% ^
 -destination %TARGET_URL%

