;; Lostbytesoft Autohotkey select a file

FileSelectFile, SelectedFile, 3, %A_ScriptDir%\, LostByteSoft, Select ONE file (*.mkv; *.mka)

if (SelectedFile = "")
	MsgBox ,, LostByteSoft, You didn't select anything.
else
	;MsgBox ,, LostByteSoft, You selected the following (will be writed to file :`n%SelectedFile%)
	;; write to file
	FileAppend, %SelectedFile%, selected.txt

Exitapp