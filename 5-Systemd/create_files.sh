#!/bin/bash
set -euo pipefail

DIR="directory"

if [ -d "$DIR" ]; then
    echo "Директория '$DIR' уже существует."
else
    mkdir "$DIR"
    echo "Директория '$DIR' создана."
fi

FILE1="$DIR/1.txt"
if [ -f "$FILE1" ]; then
    echo "Файл '$FILE1' уже существует"
else
    echo "Текущая дата: $(date)" > "$FILE1"
    echo "Файл '$FILE1' создан и заполнен информацией"
fi

FILE2="$DIR/2.txt"
if [ -f "$FILE2" ]; then
    echo "Файл '$FILE2' уже существует"
else
    echo "Версия ядра: $(uname -r)" > "$FILE2"
    echo "Файл '$FILE2' создан и заполнен информацией"
fi

FILE3="$DIR/3.txt"
if [ -f "$FILE3" ]; then
    echo "Файл '$FILE3' уже существует"
else
    echo "Имя компьютера: $(hostname)" > "$FILE3"
    echo "Файл '$FILE3' создан и заполнен информацией"
fi

FILE4="$DIR/4.txt"
if [ -f "$FILE4" ]; then
    echo "Файл '$FILE4' уже существует"
else
    {
    echo "Список файлов в домашнем каталоге:"
    echo "$(ls ~)"
    } > "$FILE4"
    echo "Файл '$FILE4' создан и заполнен информацией"
fi
