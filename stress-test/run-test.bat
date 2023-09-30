@echo off
set GATLING_HOME=C:\Software\gatling-charts-highcharts-bundle-3.9.5
set GATLING_BIN_DIR=C:\Software\gatling-charts-highcharts-bundle-3.9.5\bin
set WORKSPACE=C:\code\rinha-backend-2023-q3-java\stress-test

call "%GATLING_BIN_DIR%\gatling.bat" -rm local -s RinhaBackendSimulation ^
    -rd "DESCRICAO" ^
    -rf "%WORKSPACE%\user-files\results" ^
    -sf "%WORKSPACE%\user-files\simulations" ^
    -rsf "%WORKSPACE%\user-files\resources"

timeout /t 3

curl -v "http://localhost:9999/contagem-pessoas"