echo "Лаб 3"
#!/bin/bash

read -p "Путь к директории с txt файлами: " directory
read -p "Введите слово, которое нужно заменить в файлах '$directory': " old_word
read -p "Введите слово для замены '$old_word': " new_word
touch edited.txt

for file in "$directory"/*.txt; do
    if grep -q "$old_word" "$file"; then
        sed -i "s/$old_word/$new_word/g" "$file"
        echo "$file" >> edited.txt
    fi
done

echo "Замена слова '$old_word' на '$new_word' завершена. Измененные файлы отображены в edited.txt"
