#!/bin/bash

INPUT_DIR="/d/NormalizeAudioInVideo/do_przetworzenia"
OUTPUT_DIR="/d/NormalizeAudioInVideo/po_normalizacji"

mkdir -p "$OUTPUT_DIR"

find "$INPUT_DIR" -maxdepth 1 -type f -name "*.mp4" | while IFS= read -r input; do
  filename=$(basename "$input")
  output="$OUTPUT_DIR/$filename"

  if [[ -f "$output" ]]; then
    echo "✅ Pomijanie: $filename (już przetworzony)"
  else
    echo "🔄 Przetwarzanie: $filename"
    ffmpeg -i "$input" -filter:a "loudnorm=I=-16:TP=-1.0:LRA=11" -c:v copy "$output"
    echo "✅ Zakończono: $filename"
  fi
done
