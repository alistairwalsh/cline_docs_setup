#!/bin/bash

# Get current directory name as project name
PROJECT_NAME=$(basename "$PWD")

# Create docs directory
mkdir -p cline_docs

# Create files with minimal content
cat > cline_docs/README.md << 'EOL'
# Project Overview
- Description
- Setup steps
- Key features
EOL

cat > cline_docs/ARCHITECTURE.md << 'EOL'
# Architecture
- System overview
- Components
- Design decisions
EOL

cat > cline_docs/TODO.md << 'EOL'
# Tasks
## In Progress
- [ ] Task 1

## Planned
- [ ] Future task 1

## Done
- [x] Initial setup
EOL

cat > cline_docs/CHANGELOG.md << 'EOL'
# Changelog
## [Unreleased]
- Initial setup
EOL

# Create .cline_rules file
cat > .cline_rules << EOL
# ${PROJECT_NAME} Documentation Protocol

## Initialize
On first interaction, check for project documentation at ./cline_docs/
If not present, create basic documentation structure:

\`\`\`
./cline_docs/
├── README.md      # Project overview
├── ARCHITECTURE.md # Technical design
├── TODO.md        # Task tracking
└── CHANGELOG.md   # Version history
\`\`\`

## Update Triggers
- Code changes: Update relevant docs within 24h
- Architecture changes: Update immediately
- New tasks: Update TODO.md
- Releases: Update CHANGELOG.md

## Standards
- Use Markdown
- Include timestamps
- Reference related commits
- Document key decisions

## Git Workflow
- Feature branches
- Regular commits
- Tag versions

## Project-Specific Rules
[Add any project-specific rules here]
EOL

echo "Documentation structure created in cline_docs/"
echo ".cline_rules file created for project-specific prompts"
