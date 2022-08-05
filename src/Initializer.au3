Global $sDesiredCapabilities = _
    '{' & _
    '  "capabilities": {' & _
    '    "alwaysMatch": {' & _
    '      "goog:chromeOptions": {' & _
    '        "w3c": true,' & _
    '        "excludeSwitches": ["enable-automation"],' & _
    '        "useAutomationExtension": false,' & _
    '        "args": ["use-fake-ui-for-media-stream"]' & _
    '      }' & _
    '    }' & _
    '  }' & _
    '}'

Global $sWebDriverPath       = '..\utilities\WebDriver\'
Global $sChromeDriverExe     = 'chromedriver.exe'
Global $sChromeDriverLogFile = 'chromedriver.log'

Global $sSession
Global $sNewDictationText

Global $sBaseUrl             = 'https://dictation.io/speech'
Global $sLanguage            = 'de-de'

Global $iReadingIteration    = 1
Global $sSavedDictationText  = '-'
Global $sFilePathSpeech      = @ScriptDir & '\' & @YEAR & @MON & @MDAY & @HOUR & @MIN & '.log'

Global $sKeyword             = 'watson'
Global $sIndicator           = $sKeyword & ' '
