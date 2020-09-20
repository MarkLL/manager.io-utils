@echo off
:: we loop through all manager files to determine their version.
:: Note: Php is used to convert the 6 byte Hex output from SQLite
::       to the equivalent decimal version.
for /R %1 %%a in (*.manager) do (
  echo "%%a"
  sqlite3 "%%a" "select hex(Content) from Objects Where Key = 'a9a71e47-82b3-49db-8aec-898adb460a80';"|call php -r "echo 'db schema v'. hexdec(substr(fgets(STDIN),2,2)).PHP_EOL;"
  echo.
)
