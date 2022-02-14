Func _SetupDictationPage()
    Local $sClearSelector                  = "//span[contains(text(),'Clear')]"
    Local $sLanguageDropdownOptionSelector = "//select[@id='lang']/option[@value='" & $sLanguage & "']"
    Local $sLanguageDropdownSelector       = "//select[@id='lang']"

    _ClickElement(_FindElement($sLanguageDropdownSelector))
    _ClickElement(_FindElement($sLanguageDropdownOptionSelector))

    _ShowWaitingTooltip(15)

    _ClickElement(_FindElement($sClearSelector))
EndFunc

Func _StartDictation()
    Local $sStartSelector = "//span[@class='btn__text listen'][contains(., 'Start')]"

    _ClickElement(_FindElement($sStartSelector))
EndFunc

Func _GetLastParagraphOfEditor()
    Local $sTextSelector  = "//div[@class='ql-editor']/p[last()]"

    Return _FindElement($sTextSelector)
EndFunc
