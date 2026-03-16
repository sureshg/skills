#!/bin/bash

# Script to install skills into the global Junie skills directory (~/.junie/skills/)
set -e

SKILLS_DIR="$HOME/.junie/skills"

# Create the directory if it doesn't exist
mkdir -p "$SKILLS_DIR"

echo "Installing skills to $SKILLS_DIR..."

# Get the script's directory to allow running it from anywhere
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Iterate through directories in the script's directory
for dir in "$SCRIPT_DIR"/*/; do
    [ -d "$dir" ] || continue
    
    # Remove trailing slash and path
    skill_name=$(basename "$dir")
    
    # Skip directories that don't have a SKILL.md file or are hidden
    if [[ "$skill_name" == "."* ]] || [[ ! -f "$dir/SKILL.md" ]]; then
        continue
    fi
    
    echo "  Installing $skill_name..."
    # Create the target skill directory and copy contents
    mkdir -p "$SKILLS_DIR/$skill_name"
    cp -r "$dir"* "$SKILLS_DIR/$skill_name/"
done

echo "Done! Skills are now available to Junie."
