@echo off

:: Get the current timestamp
set TIMESTAMP=%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%

:: Remove spaces from the timestamp (Windows command prompt specific)
set TIMESTAMP=%TIMESTAMP: =0%

:: Define the output directory with the timestamp, including the parent results folder
set OUTPUT_DIR=results\results_%TIMESTAMP%

:: Run Robot Framework tests with the dynamic output directory
robot -d %OUTPUT_DIR% tests/EndToEnd/End_to_End.robot
