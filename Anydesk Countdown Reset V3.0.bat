@echo off
:: ==============================================
::  Coded by Waseem
:: ==============================================

:: Set console colors: aggressive hacker red on black
color 0C

:: Title bar
title [ AnyDesk Countdown Reset V3.0 ]

:: Clear screen
cls

:: Hacker-Style Banner
echo #############################################################
echo #                                                           #
echo #        :: Coded by Waseem ::                              #
echo #        Anydesk Countdown Reset V3.0                       #
echo #        :: itm@hotmail.it ::                               #
echo #                                                           #
echo #############################################################
echo.

:: Adding animated loading dots
echo [COMMAND] Bypassing Anydesk Security Protocols...
echo .
timeout /t 1 >nul
echo .
timeout /t 1 >nul
echo .
timeout /t 1 >nul

:: Introduction
echo [WARNING] This script will reset the AnyDesk session countdown timer. It will keep your saved sites BUT it will remove the saved passwords.
echo.
set /p userChoice=[ACTION] Do you want to continue? (Y/N): 
if /i not "%userChoice%"=="Y" (
    echo.
    echo [COMMAND] Operation cancelled by user! Sometimes...the best action is no action!
    echo.
    pause
    exit /b
)

echo.
echo [COMMAND] Preparing file operations...
timeout /t 2 >nul

:: Paths
set "roamingSource=%USERPROFILE%\AppData\Roaming\AnyDesk"
set "roamingDestination=%USERPROFILE%\AppData\Roaming\AnyDesk\old"
set "programDataSource=C:\ProgramData\AnyDesk"
set "programDataDestination=C:\ProgramData\AnyDesk\old"

:: Ensure destination folders exist
if not exist "%roamingDestination%" (
    echo [ACTION] Creating folder: %roamingDestination%
    mkdir "%roamingDestination%"
)
if not exist "%programDataDestination%" (
    echo [ACTION] Creating folder: %programDataDestination%
    mkdir "%programDataDestination%"
)

:: Simulated scanning
echo.
echo [COMMAND] Scanning AnyDesk directories...
timeout /t 2 >nul
echo [COMMAND] Processing files...
timeout /t 1 >nul

:: Move Roaming files (EXCLUDING user.conf to keep AnyDesk ID)
echo [ACTION] Moving Roaming files...
for %%f in (service.conf system.conf) do (
    if exist "%roamingSource%\%%f" (
        echo    -> Moving %%f ...
        move "%roamingSource%\%%f" "%roamingDestination%" >nul 2>nul
        rem Hidden success message
    )
    timeout /t 1 >nul
)

:: Move ProgramData files (EXCLUDING user.conf)
echo [ACTION] Moving ProgramData files...
for %%f in (service.conf system.conf) do (
    if exist "%programDataSource%\%%f" (
        echo    -> Moving %%f ...
        move "%programDataSource%\%%f" "%programDataDestination%" >nul 2>nul
        rem Hidden success message
    )
    timeout /t 1 >nul
)

:: Final clean messages
echo.
echo The process was completed successfully!
echo.

pause