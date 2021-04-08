; compiler information for AutoIt
#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
#AutoIt3Wrapper_Icon=..\media\favicon.ico
#AutoIt3Wrapper_Res_Description=Au3VoiceActions (2021-04-08)
#AutoIt3Wrapper_Res_Fileversion=0.1
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_UseX64=y



; opt and just singleton -------------------------------------------------------
Opt( 'MustDeclareVars', 1 )
Global $aInst = ProcessList( 'Au3VoiceActions.exe' )
If $aInst[0][0] > 1 Then Exit



; includes ---------------------------------------------------------------------
#include-once
#include "..\utilities\WebDriver\WD_Core.au3"
#include "..\utilities\WebDriver\WD_Helper.au3"



; references -------------------------------------------------------------------
#include "Declaration.au3"
#include "Functions.au3"



; processing -------------------------------------------------------------------
_setupChromeDriver()
_startChromeDriverSession()

WinSetState( 'data:, - Google Chrome', '', @SW_HIDE )

_navigateTo( $sBaseUrl )
_setupDictationPage()
_startDictation()

Sleep( 10000 )

MsgBox( 64, 'Information', 'This is the start.' )

While True
    Global $sCurrentDictationText = _getElementText( _getLastEditorText() )

    If $iId == 1 Then ConsoleWrite( $iId & ': "' & StringTrimLeft( $sCurrentDictationText, 1 ) & '"' & @CRLF )

    $iId += 1

    If $sCurrentDictationText <> $sSavedDictationText Then
        Global $sNewDictationText = StringReplace( $sCurrentDictationText, $sSavedDictationText, '' )
                $sNewDictationText = StringTrimLeft( $sNewDictationText, 1 )

        ConsoleWrite( $iId & ': "' & $sNewDictationText & '"' & @CRLF )
        $sSavedDictationText = $sCurrentDictationText
    EndIf

    If $iId >= 50 Then ExitLoop

    Sleep( 1000 )
WEnd

MsgBox( 64, 'Information', 'This is the end.' )

_teardownChromeDriver()
