Func _addToFile( $sFile, $sText )
    Local $hFile = FileOpen( $sFile, 1 + 256 )
    FileWrite( $hFile, $sText )
    FileClose( $hFile )
EndFunc
