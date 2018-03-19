
Set objFSO = CreateObject ("Scripting.FileSystemObject")
set objFolder = objFSO.GetFolder("C:\ProgramData\Adobe\SLStore\")

licDate=CDate("2018/01/01")

for each objFile in objFolder.files
	If LCase(objFSO.GetExtensionName(objFile.Name)) = "lic" Then
        if objFile.DateLastModified > licDate then
			wscript.echo FormatDateTime(objFile.DateLastModified,2)
		end if
	
	End If
Next
