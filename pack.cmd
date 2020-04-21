TITLE Typer Tools Pack

SET name=com.swirt.typertools
SET sert=selfDB.p12
SET pass=12345

del %sert%
del %name%.zxp
rmdir %name% /S/Q

xcopy typertools\app %name%\app\ /E/Y
xcopy typertools\CSXS %name%\CSXS\ /E/Y

ZXPSignCmd -selfSignedCert RU SPB 34squad "34th squad" %pass% %sert%
ZXPSignCmd -sign %name% %name%.zxp %sert% %pass% -tsa http://timestamp.digicert.com/

rmdir %name% /S/Q
del %sert%
del .rnd

PAUSE