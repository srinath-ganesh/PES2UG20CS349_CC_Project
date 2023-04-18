@echo off
C:
cd "C:\Program Files\Docker\Docker\"
echo Starting Docker Desktop
START Docker Desktop.exe
timeout /t 40 /nobreak > NUL
echo Building all containers
F:
cd "F:\Semester 6\CC Project\CC_Project_Final\microservices"
START cmd /k "docker-compose build"
timeout /t 90 /nobreak > NUL
echo Running all containers
START cmd /k "docker-compose up"
timeout /t 90 /nobreak > NUL
echo Starting the application
timeout /t 10 /nobreak > NUL
START http://127.0.0.1:5050