

set SOURCE_URL=https://raw.githubusercontent.com/antlr4ide/antlr4ide-eclipse-release/master
set TARGET_URL=file:/webdev/mirror-meta

eclipsec.exe -nosplash -verbose -writeMode clean ^
 -application org.eclipse.equinox.p2.metadata.repository.mirrorApplication ^
 -source %SOURCE_URL% ^
 -destination %TARGET_URL%

