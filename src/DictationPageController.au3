Func _setupDictationPage()
    Local $sClearSelector                  = "//span[contains(text(),'Clear')]"
    Local $sLanguageDropdownOptionSelector = "//select[@id='lang']/option[@value='" & $sLanguage & "']"
    Local $sLanguageDropdownSelector       = "//select[@id='lang']"

    _clickElement(_findElement($sLanguageDropdownSelector))
    _clickElement(_findElement($sLanguageDropdownOptionSelector))

    _showWaitingTooltip(15)

    _clickElement(_findElement($sClearSelector))
EndFunc

Func _startDictation()
    Local $sStartSelector = "//span[@class='btn__text listen'][contains(., 'Start')]"

    _clickElement(_findElement($sStartSelector))
EndFunc

Func _getLastParagraphOfEditor()
    Local $sTextSelector  = "//div[@class='ql-editor']/p[last()]"

    Return _findElement($sTextSelector)
EndFunc
