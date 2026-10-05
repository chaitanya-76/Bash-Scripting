#!/usr/bin/bash

# Exit immediately if a command fails
set -e

# Define the target test directory
TEST_DIR="./organizer_test_environment"

# Create the folder if it doesn't exist, then move inside it
mkdir -p "$TEST_DIR"
cd "$TEST_DIR"

echo "🔨 Generating random test files in: $(pwd)"

# 1. Create a mix of valid files across different categories
touch photo1.jpg photo2.png family_cat.png vacation_shot.jpg
touch homework.docx resume.pdf tutorial.pdf notes.txt
touch song1.mp3 podcast_episode4.wav track02.mp3
touch budget.xlsx data_sheet.csv

# 2. Create some files with uppercase extensions to test script robustness
touch SCAN_001.JPG DOCUMENT_FINAL.PDF

# 3. Create a couple of completely empty folders to see if your organizer ignores them
mkdir -p empty_folder_1 empty_folder_2

echo "✅ Generation complete! You have $(ls -1 | wc -l) items ready to organize."
