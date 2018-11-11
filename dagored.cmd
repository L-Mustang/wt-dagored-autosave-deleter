@echo off
%~d0
cd %~dp0
call setup.cmd
start dagor3_cdk\bin64\daEditor3x-dev.exe -ws:WarThunderCDK -include_dll_re:heightmapLand-aces -enable:Landscape -enable:StaticGeom "-disable:Scene view" "-disable:(srv) Phys object entities"
rem -disable:SceneView
call autosave_delete.vbs
