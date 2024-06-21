FROM microsoft/aspnetWORKDIR C:\\InstallersCOPY EKBCS.exe 
C:\\Installers\\myinstaller.exeCOPY EKBCS.properties
C:\\Installers\\myinstaller.properties#RUN msiexec /unreg#RUN msiexec /regserver#RUN 
["net start", "msiserver"]RUN ["myinstaller.exe", "/l*v myinstaller.log",  "/qn PROPERTYFILE=myinstaller.properties"]ENTRYPOINT ["powershell"]
