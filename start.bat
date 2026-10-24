@echo off
setlocal
chcp 65001 >nul
cd /d "%~dp0"
title Mega Drive Web Player

where node >nul 2>nul
if errorlevel 1 (
  echo.
  echo 未找到 Node.js。请先安装 Node.js：https://nodejs.org/
  echo.
  pause
  exit /b 1
)

node server.js
if errorlevel 1 (
  echo.
  echo 服务器已退出。
  pause
)
