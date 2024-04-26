# Путь к 7-Zip (предполагается, что 7-Zip установлен)
$zipExe = "C:\Program Files\7-Zip\7z.exe"

# Папка для временного сохранения архива
$outputFolder = "G:\Work\tmp\"

# Путь к папке 1 G:\Work\Note\
$folder1 = "G:\Work\Note\"

# Путь к папке 2 D:\Programs\
$folder2 = "D:\Programs\"

# Имя архива
$archiveName = "Backup_$(Get-Date -Format 'yyyyMMdd_HHmmss').7z"

$password = "(password)"

# Создание архива в формате 7z
& $zipExe a -t7z -p"$password" "$outputFolder\$archiveName" "$folder1" "$folder2"

# Копирование архива в папку Upload_sync
Copy-Item "$outputFolder\$archiveName" "G:\Work\Upload\"
