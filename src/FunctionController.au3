Func _AppendToFile($sFile, $sText)
    Local Const $iUtf8WithoutBomAndAppendMode = 256 + 1

    Local $hFile = FileOpen($sFile, $iUtf8WithoutBomAndAppendMode)
    FileWrite($hFile, $sText)
    FileClose($hFile)
EndFunc

Func _GetCount($aList)
    Return UBound($aList) - 1
EndFunc

Func _ShowWaitingTooltip($iSecondsToWait)
    For $i = 1 To $iSecondsToWait Step 1
        ToolTip($i & '/' & $iSecondsToWait)
        Sleep(1000)
    Next

    ToolTip('')
EndFunc

Func _Cmd($sCommandLineCommand)
    ShellExecute(@ComSpec, ' /c "' & $sCommandLineCommand & '"', '', '', @SW_HIDE)
EndFunc
