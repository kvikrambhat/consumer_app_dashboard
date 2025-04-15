#!/bin/bash

REMOTE_URL="https://github.com/kvikrambhat/component-library.git"
PREFIX="component-library"

echo "📦 Setting up Git subtree aliases for Vite app..."

# Git aliases
git config alias.subtree-push "!git subtree push --prefix=$PREFIX $REMOTE_URL main"
git config alias.subtree-pull "!git subtree pull --prefix=$PREFIX $REMOTE_URL main --squash"
git config alias.subtree-add  "!git subtree add --prefix=$PREFIX $REMOTE_URL main --squash"

# Fix: Run the subtree add using eval
if [ ! -d "$PREFIX" ]; then
  echo "📁 '$PREFIX' not found. Running subtree add with eval workaround..."
  eval "git subtree add --prefix=\"$PREFIX\" \"$REMOTE_URL\" main --squash"
else
  echo "✅ Subtree already exists at '$PREFIX'. Skipping add."
fi

echo "✅ Git aliases set and subtree is ready for Vite app!"
