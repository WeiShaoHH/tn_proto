@echo off
chcp 65001 >nul
cd /d "%~dp0"
set OUTPUT=..\..\Assets\Scripts\generated\proto
if not exist "%OUTPUT%" mkdir "%OUTPUT%"
protoc --csharp_out="%OUTPUT%" --proto_path=./proto --proto_path=./google ./proto/*.proto
echo 代码生成完成！
pause