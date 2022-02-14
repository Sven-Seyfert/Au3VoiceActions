Func _ExecuteValidCommendAction()
    If StringInStr($sNewDictationText, $sIndicator, 2) == 0 Then
        Return
    EndIf

    _ExecuteCommandIfFound($aOpenCommandTable)
    _ExecuteCommandIfFound($aCloseCommandTable)
    _ExecuteCommandIfFound($aMiscCommandTable)
EndFunc

Func _ExecuteCommandIfFound($aCommandTable)
    Local $iMatchIndex = _GetCommandIndex($aCommandTable)

    If $iMatchIndex == -1 Then
        Return
    EndIf

    _ExecuteCommandAction($aCommandTable, $iMatchIndex)
EndFunc

Func _GetCommandIndex($aCommandTable)
    Return _ArraySearch($aCommandTable, StringReplace($sNewDictationText, $sIndicator, ''))
EndFunc

Func _ExecuteCommandAction($aCommandTable, $iMatchIndex)
    Local $sActionFunction = $aCommandTable[$iMatchIndex][1]

    Call($sActionFunction)
EndFunc

