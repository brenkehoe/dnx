@Echo OFF
:: Web [url] [path]
::   url :  Optional - The URL to listen on. Defaults to http://localhost:8080
::   path : Optional - The path to the web app folder. Defaults to PWD.

:: e.g. To run the current folder on the default URL:
::      C:\src\MyWebApp\>Web

:: e.g. To run the current folder on a specific URL:
::      C:\src\MyWebApp\>Web "http://localhost:9001"

:: e.g. To run a specific folder on the default URL:
::      C:\>Web "http://localhost:9001" C:\src\MyWebApp

SET _watchDog=%~dp0..\WatchDog
SET _webHost=%~dp0..\WebHost\bin\Debug\WebHost.exe

SET _url=%~1
IF "%_url%"=="" SET _url=http://localhost:8080

SET _path=%~f2
IF "%_path%"=="" SET _path=%CD%

::Echo K run %_watchDog% %_webHost% %_path% %_url%

Call %~dp0\K run %_watchDog% %_webHost% %_path% %_url% < Nul