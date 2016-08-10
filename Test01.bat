@echo off
cd C:/Source/MABE/Results
setlocal enableDelayedExpansion
( 
echo 1 1 0 0
echo 1 1 0 0
FOR /l %%x in (1, 1, 1) DO (
FOR /l %%w in (1, 1, 19) DO (
echo 1 1 0 0)
)
pause
) |MABE.exe -f settings.cfg settings_organism.cfg settings_world.cfg 

