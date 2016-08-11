@echo off
cd C:/Source/MABE/Results
setlocal enableDelayedExpansion
( 

echo 1 1 0 0
echo 1 1 0 0
FOR /l %%x in (1, 1, 1) DO (
FOR /l %%w in (1, 1, 10) DO (
echo 1 1 0 0
echo 1 1 0 0)) ::Move Both to Middle but top is one Above Middle
FOR /l %%x in (1, 1, 1) DO (
FOR /l %%w in (1, 1, 1) DO (
echo 0 1 0 0
echo 0 0 0 0)) ::Rotate Bottom One Right
FOR /l %%x in (1, 1, 1) DO (
FOR /l %%w in (1, 1, 1) DO (
echo 1 1 0 0
echo 1 1 0 0)) ::Move Bottom One Right and Top Down
FOR /l %%x in (1, 1, 1) DO (
FOR /l %%w in (1, 1, 1) DO (
echo 0 0 0 0
echo 0 1 0 0)) ::Rotate Top One Left
FOR /l %%x in (1, 1, 1) DO (
FOR /l %%w in (1, 1, 10) DO (
echo 1 1 0 0
echo 1 1 0 0)) ::Move Bottom to Edge
pause
) |MABE.exe -f settings.cfg settings_organism.cfg settings_world.cfg 

