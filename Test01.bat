@echo off
cd C:/Source/MABE/Results
setlocal enableDelayedExpansion
( 
echo 1 1 0 0
echo 1 1 0 0
FOR /l %%x in (1, 1, 17) DO (
echo 1 1 0 0
)
echo File Not Found
pause
) |MABE.exe -f settings.cfg settings_organism.cfg settings_world.cfg

