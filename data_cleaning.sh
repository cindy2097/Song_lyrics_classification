#!/bin/bash

input_file="dataset.csv"
output_file="cleaned_data.csv"

header=$(head -n 1 "$input_file")
echo "$header" > "$output_file"

tail -n +2 "$input_file" | tr [:upper:] [:lower:] | tr -d [:punct:] >> "$output_file"

echo "Done data cleaning"
