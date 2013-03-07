@ECHO OFF

for %%X in (7z.exe) do set FOUND=%%~$PATH:X
if defined FOUND ( 7z a -r -tzip -y -xr!?git\ -xr@.\7zignore.lst .\bin\mapservice-client.nw .\* ) else ( exit )
copy /b .\lib\nw.exe+.\bin\mapservice-client.nw .\bin\mapservice-client.exe