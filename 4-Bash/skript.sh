#!/bin/bash
set -euo pipefail
cd /home/admin/Документы
echo "Все файлы в директории"
ls -aR

mkdir -p papka/task1bash
mkdir -p papka2
echo "приветик" > papka/task1bash/num4.txt
mv papka/task1bash/num4.txt papka2/num4.txt
cp papka2/num4.txt papka/

echo "Сравнение файлов"
if diff -q papka/num4.txt papka2/num4.txt; then
	echo "файлики одинаковы"
else
	echo "файлики различаются"
fi

sort papka/num4.txt -o sortnum4.txt
sort -r papka/num4.txt -o rsortnum4.txt

echo "Сортировка содержимого по возрастанию"
cat sortnum4.txt

echo "Сортировка по убыванию"
cat rsortnum4.txt

rm -rf papka
rm -rf papka2
echo "Папки удалены" 
