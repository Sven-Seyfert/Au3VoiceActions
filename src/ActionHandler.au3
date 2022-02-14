Func _OpenFirefox()
    _Cmd('start firefox')
EndFunc

Func _OpenChrome()
    _Cmd('start chrome')
EndFunc

Func _OpenCmd()
    _Cmd('start cmd')
EndFunc

Func _OpenCode()
    _Cmd('code')
EndFunc

Func _OpenFolderGitHub()
    _Cmd('start C:\LocalWorkspace\GitHub')
EndFunc

Func _OpenFolderTestautomation()
    _Cmd('start D:\LocalRepos\Value.Testautomation')
EndFunc

Func _TeardownAndExit()
    _TeardownChromeDriver()

    Beep(500, 250)

    Exit
EndFunc

Func _CloseActiveWindow()
    WinClose(WinGetTitle('[active]'))
EndFunc

Func _MaximizeWindow()
    WinSetState(WinGetTitle('[active]'), '', @SW_MAXIMIZE)
EndFunc

Func _LockComputer()
    DllCall('user32.dll', 'int', 'LockWorkStation')
EndFunc
