#!/bin/bash

# Output base directory
output_base="wbfs"

mkdir -p "$output_base"

for iso in *.iso; do
    echo "🔄 Processing: $iso"

    # Extract Game ID from 'Disc & part IDs:' line
    gameid=$(wit dump "$iso" | grep -m 1 "Disc & part IDs:" | sed -E 's/.*disc=([A-Z0-9]+).*/\1/')

    # Extract Game Title from 'Disc name:' line
    title=$(wit dump "$iso" | grep -m 1 "Disc name:" | sed -E 's/.*Disc name:[[:space:]]*//')

    # Sanitize title (remove special characters and trim)
    safe_title=$(echo "$title" | tr -d ':/?"<>\\|*' | sed -E 's/ +$//; s/^ +//')

    folder="${output_base}/${safe_title} [${gameid}]"
    filename="${safe_title} [${gameid}].wbfs"

    mkdir -p "$folder"

    # Convert with split for FAT32
    wit copy "$iso" "${folder}/${filename}" --wbfs --split

    echo "✅ Saved to: ${folder}/${filename}"
    echo
done

echo "🎉 All ISO files converted successfully."
