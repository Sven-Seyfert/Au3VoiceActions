Global $aOpenCommandTable[6][2] = _
    [ _
        ['öffne firefox',                '_openFirefox'], _
        ['öffne chrome',                 '_openChrome'], _
        ['öffne cmd',                    '_openCmd'], _
        ['öffne code',                   '_openCode'], _
        ['öffne ordner github',          '_openFolderGitHub'], _
        ['öffne ordner test automation', '_openFolderTestautomation'] _
    ]

Global $aCloseCommandTable[2][2] = _
    [ _
        ['schließe fenster',           '_closeActiveWindow'], _
        ['schließe aktuelles fenster', '_closeActiveWindow'] _
    ]


Global $aMiscCommandTable[3][2] = _
    [ _
        ['beende aufnahme',   '_teardownAndExit'], _
        ['maximiere fenster', '_maximizeWindow'], _
        ['sperre computer',   '_lockComputer'] _
    ]
