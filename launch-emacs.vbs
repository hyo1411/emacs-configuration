Set WshShell = WScript.CreateObject("WScript.Shell")
if WScript.Arguments.Count > 0 then
   arg =  WScript.Arguments(0)
end if

WshShell.Run "D:\cygwin64\bin\sh.exe -li /home/binh/.emacs.d/emacs-open-file-windows.sh " & arg, 0, False