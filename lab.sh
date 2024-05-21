echo "Лаб 3"
#!/bin/bash

read -p "Путь к директории с txt файлами: " directory
read -p "Введите слово, которое нужно заменить в файлах '$directory': " old
read -p "Введите слово для замены '$old': " new
touch edited.txt

for file in $(find . -type f -name "*.txt"); do
    if grep -q "$old" "$file"; then
        sed -i "s/$old/$new/" "$file"
        echo "Замена '$old' на '$new' в файле '$file'" >> edited.txt
    fi
done

echo "Замена слова '$old' на '$new' завершена. Измененные файлы отображены в edited.txt"
