@echo off
setlocal enabledelayedexpansion
title File Manager
echo Would you like to open, view text, create something?
echo Commands:
echo open - Open a File
echo view - View a File
echo create - Create a File
set /p "input=Command: "
if "!input!"=="open" (
    echo This will be opened in your default extension file opener.
    set /p "fileLocation=File Location (add the extension of the file with it): "
    if not exist "!fileLocation!" (
        echo File does not exist.
    ) else (
        start "" "!fileLocation!"
    )
)
if "!input!"=="view" (
    echo This will be viewed in this program.
    set /p "viewFileName=File: "
    set /p "viewFileExtension=File Extension: "
    if not exist "!viewFileName!.!viewFileExtension!" (
        echo File does not exist.
    ) else (
        type "!viewFileName!.!viewFileExtension!"
    )
)
if "!input!"=="create" (
    echo This will be created anywhere from your computer or in a USB Drive.
    set /p "fileName=File Name: "
    set /p "fileExtension=File Extension: "
    set /p "fileLocation=File folder (parent): "
    set /p "fileContent=File Content: "
    echo "!fileContent!" >> "!fileLocation!\!fileName!.!fileExtension!"
    echo File created successfully.
)
pause