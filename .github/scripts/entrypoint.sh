
#!/bin/bash
set -e

echo "Starting Frequency Analyzer..."

WORKSPACE="${GITHUB_WORKSPACE:-/workspace}"
FILE_PATH="$WORKSPACE/${FILE:-data.txt}"

FREQ_RESULT=$(python3 /app/.github/scripts/frequency.py "$FILE_PATH")

echo "Vowel frequency result: $FREQ_RESULT"

bash /app/.github/scripts/update_readme.sh "$FREQ_RESULT" "${GITHUB_USER:-unknown}" "$WORKSPACE"

echo "Process Completed!"
