#!/bin/bash
echo "START:===================================="
folder_name="$1"
echo "Making folder "$folder_name"/ into Alfred Snippets Collection..."
cd $folder_name"/" && zip $folder_name".zip" *
cd .. && mv $folder_name"/"$folder_name".zip" .
mv $folder_name".zip" $folder_name".alfredsnippets"
echo "END:======================================"
