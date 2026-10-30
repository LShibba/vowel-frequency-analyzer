
#!/bin/bash
set -e

echo "Starting Frequency Analyzer..."

# Read the input file from the mounted repository
FILE_PATH="/workspace/${FILE:-data.txt}"

# Run the Python vowel frequency analyzer
FREQ_RESULT=$(python3 /app/.github/scripts/frequency.py "$FILE_PATH")

echo "Vowel frequency result: $FREQ_RESULT"

# Update README.md with the results
bash /app/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Process Completed!"
