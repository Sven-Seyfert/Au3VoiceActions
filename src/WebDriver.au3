Func _setupChromeDriver()
    _WD_Option('Driver', $sWebDriverPath & $sChromeDriverExe)
    _WD_Option('Port', 9515)
    _WD_Option('DriverParams', '--verbose --log-path="' & $sWebDriverPath & $sChromeDriverLogFile & '"')
EndFunc

Func _startChromeDriverSession()
    _WD_Startup()
    $sSession = _WD_CreateSession($sDesiredCapabilities)
EndFunc

Func _teardownChromeDriver()
    _WD_DeleteSession($sSession)
    _WD_Shutdown()
EndFunc

Func _navigateTo($sUrl)
    _WD_Navigate($sSession, $sUrl)
EndFunc

Func _findElement($sSelector)
    Return _WD_FindElement($sSession, $_WD_LOCATOR_ByXPath, $sSelector)
EndFunc

Func _findElements($sSelector)
    Return _WD_FindElement($sSession, $_WD_LOCATOR_ByXPath, $sSelector, Default, True)
EndFunc

Func _clickElement($sElement)
    _WD_ElementAction($sSession, $sElement, 'click')
EndFunc

Func _getElementText($sElement)
    Return _WD_ElementAction($sSession, $sElement, 'text')
EndFunc
