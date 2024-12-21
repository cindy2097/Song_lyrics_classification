#!/bin/bash

input_file="cleaned_data.csv"

cat "$input_file" | tr ' ' '\n' > "tokenizated_data.txt"

awk -v n=2 '{
for (i=1; i<=NF-n+1; i++)
	{printf "%s ", $i;
		for (j=1; j<n;j++)
			{printf "%s ", $(i+j)
			}
			printf "\n"
		}
	}' "$input_file" > "ngrams.txt"

echo "Done n grams extraction"
