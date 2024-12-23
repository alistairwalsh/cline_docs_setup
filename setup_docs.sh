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

# Create .cline_rules file for project-specific system prompts
cat > .cline_rules << 'EOL'
# Project-Specific Rules and Guidelines

## Project Context
- Project Name: ${PROJECT_NAME}
- Purpose: [Brief description of project purpose]

## Development Rules
- [Add project-specific development rules]
- [Add coding standards specific to this project]

## Project-Specific Prompts
- [Add custom system prompts for this project]
- [Add specific instructions for AI interactions]

## Workflow Guidelines
- [Add project workflow requirements]
- [Add deployment/testing requirements]
EOL

echo "Documentation structure created in cline_docs/"
echo ".cline_rules file created for project-specific prompts"
