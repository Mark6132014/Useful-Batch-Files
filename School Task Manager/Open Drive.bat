::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCqDJHaU8UxwGxhcQwuOfE+oD6MZpu3j6oo=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal enabledelayedexpansion
title School Task Manager
rem Reminder file
set "REMINDER_FILE=reminder.txt"
echo Reminders:
echo.
type reminder.txt
echo.
echo Commands:
echo create-reminder: creates a reminder
echo clear: clears all reminders and tasks
echo start: starts E

rem Check for command line arguments
if "%~1"=="" goto :interactive_mode

rem Create a reminder
if "%~1"=="create-reminder" (
    shift
    set "reminder="
    :loop
    if "%~1"=="" goto :save_reminder
    set "reminder=!reminder! %~1"
    shift
    goto :loop
    :save_reminder
    echo !reminder!>>%REMINDER_FILE%
    echo Reminder created.
    goto :eof
)

rem Clear reminders
if "%~1"=="clear" (
    echo. > %REMINDER_FILE%
    echo All reminders cleared.
    goto :eof
)

:interactive_mode
set /p input="Command here: "

if "%input%"=="create-reminder" (
    setlocal enabledelayedexpansion
    set /p reminder_name="Reminder Name: "
    set /p reminder_text="Reminder Text: "
    set /p reminder_date="Due Date: "
    echo Name: !reminder_name!, Text: !reminder_text!, Due Date: !reminder_date!>>%REMINDER_FILE%
    echo. >>%REMINDER_FILE%
    echo Reminder created.
    endlocal
    goto :eof
)

if "%input%"=="clear" (
    echo. > %REMINDER_FILE%
    echo All reminders cleared.
    goto :eof
)
if "%input%"=="start" (
start E:\
)

echo Invalid command.