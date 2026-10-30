
#!/bin/bash
set -e

FREQ_RESULT="$1"
GITHUB_USER="$2"
WORKSPACE="$3"
TIMESTAMP=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

cat >> "$WORKSPACE/README.md" <<EOF

### Vowel Frequency Analysis

- **Contributor:** ${GITHUB_USER}
- **Vowel frequencies:** ${FREQ_RESULT}
- **Timestamp:** ${TIMESTAMP}

EOF

echo "README.md updated successfully!"
