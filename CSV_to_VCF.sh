#!/bin/bash

input=$1
output="list.vcf"


if [ ! -f "$input" ]; then
    echo "File not found!"
    exit 1
fi

> "$output"

tail -n +2 "$input" | while IFS=',' read -r name mis email
do
    echo "First Name:$name" >> "$output"
    echo "Mis :$mis" >> "$output"
    echo "Email:$email" >> "$output"
    echo "   ">> "$output"
done

echo "VCF file created: $output"
