#!/bin/bash

function createFileWithContent()
{
    echo "Content of file $1" > $1
}

createFileWithContent fileRoot1.class
createFileWithContent fileRoot2.txt
createFileWithContent fileRoot2.class
createFileWithContent fileRoot3.txt

mkdir folderA
createFileWithContent folderA/fileA1.txt
createFileWithContent folderA/fileA2.class
createFileWithContent folderA/fileA3.txt

mkdir folderB
createFileWithContent folderB/fileB1.class
createFileWithContent folderB/fileB1.md
createFileWithContent folderB/fileB2.txt

mkdir folderC
mkdir folderC/build
createFileWithContent folderC/build/fileC1.class
createFileWithContent folderC/build/fileC2.txt

mkdir folderC/temp
createFileWithContent folderC/temp/fileTemp1.class
createFileWithContent folderC/temp/fileTemp2.txt
createFileWithContent folderC/temp/fileTemp3.class
createFileWithContent folderC/temp/fileTemp4.txt

git add folderA/
git add folderC/

rm fileRoot2.class
rm folderB/fileB1.md

echo "$0 completed!"
