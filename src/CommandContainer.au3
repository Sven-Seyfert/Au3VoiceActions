Global $aOpenCommandTable[][2] = _
    [ _
        ['öffne firefox',                '_OpenFirefox'], _
        ['öffne chrome',                 '_OpenChrome'], _
        ['öffne cmd',                    '_OpenCmd'], _
        ['öffne code',                   '_OpenCode'], _
        ['öffne ordner github',          '_OpenFolderGitHub'], _
        ['öffne ordner test automation', '_OpenFolderTestautomation'] _
    ]

Global $aCloseCommandTable[][2] = _
    [ _
        ['schließe fenster',           '_CloseActiveWindow'], _
        ['schließe aktuelles fenster', '_CloseActiveWindow'] _
    ]


Global $aMiscCommandTable[][2] = _
    [ _
        ['beende aufnahme',   '_TeardownAndExit'], _
        ['maximiere fenster', '_MaximizeWindow'], _
        ['sperre computer',   '_LockComputer'] _
    ]
