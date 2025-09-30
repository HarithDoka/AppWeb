#!/bin/bash
# Script auto commit & push untuk Legion

REPO_PATH="$HOME/AppWeb"  # folder repo

cd "$REPO_PATH" || { echo "Folder repo tidak ditemukan"; exit 1; }

# Buat file dummy baru
FILE_NAME="dummy_$(date +%Y%m%d%H%M%S).txt"
echo "Auto commit $(date)" > "$FILE_NAME"

# Tambahkan semua perubahan
git add .

# Commit otomatis
git commit -m "Auto commit $(date '+%Y-%m-%d %H:%M:%S')"

# Push ke GitHub
git push origin main  # ganti 'main' jika branch utama berbeda

echo "✅ Auto commit & push berhasil: $FILE_NAME"
