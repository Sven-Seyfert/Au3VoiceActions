Func _openFirefox()
    _cmd( 'start firefox' )
EndFunc

Func _openChrome()
    _cmd( 'start chrome' )
EndFunc

Func _openCmd()
    _cmd( 'start cmd' )
EndFunc

Func _openCode()
    _cmd( 'code' )
EndFunc

Func _openFolderGitHub()
    _cmd( 'start C:\LocalWorkspace\GitHub' )
EndFunc

Func _openFolderTestautomation()
    _cmd( 'start D:\LocalRepos\Value.Testautomation' )
EndFunc

Func _teardownAndExit()
    _teardownChromeDriver()

    Beep( 500, 250 )

    Exit
EndFunc

Func _closeActiveWindow()
    WinClose( WinGetTitle( '[active]' ) )
EndFunc

Func _maximizeWindow()
    WinSetState( WinGetTitle( '[active]' ), '', @SW_MAXIMIZE )
EndFunc

Func _lockComputer()
    DllCall( 'user32.dll', 'int', 'LockWorkStation' )
EndFunc
