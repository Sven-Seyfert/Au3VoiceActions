Func _executeValidCommendAction()
    If StringInStr( $sNewDictationText, $sIndicator, 2 ) == 0 Then
        Return
    EndIf

    _executeCommandIfFound( $aOpenCommandTable )
    _executeCommandIfFound( $aCloseCommandTable )
    _executeCommandIfFound( $aMiscCommandTable )
EndFunc

Func _executeCommandIfFound( $aCommandTable )
    Local $iMatchIndex = _getCommandIndex( $aCommandTable )

    If $iMatchIndex == -1 Then
        Return
    EndIf

    _executeCommandAction( $aCommandTable, $iMatchIndex )
EndFunc

Func _getCommandIndex( $aCommandTable )
    Return _ArraySearch( $aCommandTable, StringReplace( $sNewDictationText, $sIndicator, '' ) )
EndFunc

Func _executeCommandAction( $aCommandTable, $iMatchIndex )
    If $iMatchIndex == -1 Then
        Return
    EndIf

    Local $sActionFunction = $aCommandTable[$iMatchIndex][1]

    Call( $sActionFunction )
EndFunc

