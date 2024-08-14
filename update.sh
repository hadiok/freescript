#!/bin/bash

# Path ke direktori repository
REPO_DIR="/storage/emulated/0/Fox/awal/cfnfree"

# Pesan commit default jika tidak ada argumen
COMMIT_MSG=${1:-"Auto-update repository"}

# Tambahkan direktori ke safe directory
git config --global --add safe.directory "$REPO_DIR"

# Masuk ke direktori repository
cd "$REPO_DIR" || { echo "Directory not found: $REPO_DIR"; exit 1; }

# Tambahkan semua perubahan
git add .

# Commit perubahan dengan pesan commit
git commit -m "$COMMIT_MSG"

# Push ke remote repository
git push origin main

echo "Repository updated and pushed successfully!"
