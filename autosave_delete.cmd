::By LordMustang

@echo off
%~d0
cd %~dp0
cd ..
cd UserMissions
:loop
tasklist | find /i "daEditor3x-dev" >nul 2>&1
if errorlevel 1 (
  goto continue
) else (
  echo DaEditor is still running
  del /S /Q "*autosave.blk"
  timeout /T 2
  goto loop
)

:continue
echo DaEditor has been closed