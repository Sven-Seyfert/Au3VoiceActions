; compiler information for AutoIt
#pragma compile(CompanyName, © SOLVE SMART)
#pragma compile(FileVersion, 1.3.0)
#pragma compile(LegalCopyright, © Sven Seyfert)
#pragma compile(ProductName, Au3VoiceActions)
#pragma compile(ProductVersion, 1.3.0 - 2022-02-10)

#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
#AutoIt3Wrapper_Icon=..\media\favicon.ico
#AutoIt3Wrapper_Outfile_x64=..\build\Au3VoiceActions.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_UseX64=y



; opt and just singleton -------------------------------------------------------
Opt('MustDeclareVars', 1)
Global $aInst = ProcessList('Au3VoiceActions.exe')
If $aInst[0][0] > 1 Then Exit



; includes ---------------------------------------------------------------------
#include-once
#include "..\utilities\WebDriver\WD_Core.au3"
#include "..\utilities\WebDriver\WD_Helper.au3"



; references -------------------------------------------------------------------
#include "DeclarationBuilder.au3"
#include "CommandContainer.au3"
#include "WebDriver.au3"
#include "FunctionController.au3"
#include "DictationPageController.au3"
#include "ExecutionBuilder.au3"
#include "ActionHandler.au3"



; processing -------------------------------------------------------------------
_setupChromeDriver()
_startChromeDriverSession()

WinSetState('data:, - Google Chrome', '', @SW_HIDE)

_navigateTo($sBaseUrl)
_setupDictationPage()
_startDictation()

Sleep(2000)
Beep(500, 250)

FileDelete($sFilePathSpeech)

While True
    Global $sLastParagraphOfEditor = _getLastParagraphOfEditor()

    If $sLastParagraphOfEditor <> '' Then
        Global $sCurrentDictationText  = _getElementText($sLastParagraphOfEditor)

        If $sCurrentDictationText <> $sSavedDictationText Then
            $sNewDictationText = StringReplace($sCurrentDictationText, $sSavedDictationText, '')
            $sNewDictationText = StringTrimLeft($sNewDictationText, 1)

            _appendToFile($sFilePathSpeech, $iReadingIteration & ': "' & $sNewDictationText & '"' & @CRLF)
            _executeValidCommendAction()

            $sSavedDictationText = $sCurrentDictationText
        EndIf

        $iReadingIteration += 1

        If $iReadingIteration >= 1000 Then ExitLoop
    EndIf

    Sleep(650)
WEnd

MsgBox(64, 'Information', 'This is the end.')

_teardownChromeDriver()
