
#!/bin/bash
set -e

# Receive vowel counts and GitHub username
FREQ_RESULT="$1"
GITHUB_USER="$2"

# Capture current date and time
TIMESTAMP=$(date -u +"%Y-%m-%d %H:%M:%S UTC")

# Update README.md
cat >> /workspace/README.md <<EOF

### Vowel Frequency Analysis

- **Contributor:** ${GITHUB_USER}
- **Vowel frequencies:** ${FREQ_RESULT}
- **Timestamp:** ${TIMESTAMP}

EOF

echo "README.md updated successfully!"
