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

Global $sBaseUrl             = 'https://dictation.io/speech'
Global $sLanguage            = 'de-de'
Global $iId                  = 1
Global $sSavedDictationText  = ''
Global $sVoiceAction         = ''
Global $sFilePathSpeech      = @ScriptDir & '\' & @YEAR & @MON & @MDAY & @HOUR & @MIN & '.log'
