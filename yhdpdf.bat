
rem https://superuser.com/a/460648/39800
@echo off
set expanded_list=
for /f "tokens=*" %%F in ('dir /b /a:-d "*.pdf"') do call set expanded_list=%%expanded_list%% "%%F"

echo expanded_list is: 
echo %expanded_list%


C:\softat\gs\gs9.23\bin\gswin64.exe -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=mlasku.pdf %expanded_list%
