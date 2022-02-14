Func _SetupChromeDriver()
    _WD_Option('Driver', $sWebDriverPath & $sChromeDriverExe)
    _WD_Option('Port', 9515)
    _WD_Option('DriverParams', '--verbose --log-path="' & $sWebDriverPath & $sChromeDriverLogFile & '"')
EndFunc

Func _StartChromeDriverSession()
    _WD_Startup()
    $sSession = _WD_CreateSession($sDesiredCapabilities)
EndFunc

Func _TeardownChromeDriver()
    _WD_DeleteSession($sSession)
    _WD_Shutdown()
EndFunc

Func _NavigateTo($sUrl)
    _WD_Navigate($sSession, $sUrl)
EndFunc

Func _FindElement($sSelector)
    Return _WD_FindElement($sSession, $_WD_LOCATOR_ByXPath, $sSelector)
EndFunc

Func _FindElements($sSelector)
    Return _WD_FindElement($sSession, $_WD_LOCATOR_ByXPath, $sSelector, Default, True)
EndFunc

Func _ClickElement($sElement)
    _WD_ElementAction($sSession, $sElement, 'click')
EndFunc

Func _GetElementText($sElement)
    Return _WD_ElementAction($sSession, $sElement, 'text')
EndFunc
