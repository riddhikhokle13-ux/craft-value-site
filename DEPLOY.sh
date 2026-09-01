#!/bin/bash
# Quick Deploy Script for Craft / Value
# Run this to quickly deploy to GitHub Pages

echo "🚀 Craft / Value — Deployment Setup"
echo "===================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first:"
    echo "   https://git-scm.com/download/mac"
    exit 1
fi

echo "✅ Git found"
echo ""

# Check if we're in the right directory
if [ ! -f "index.html" ]; then
    echo "❌ index.html not found. Are you in the craft-value-site directory?"
    exit 1
fi

echo "✅ Found index.html"
echo ""

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    git add .
    git commit -m "Initial commit: Craft Value site with YouTube video integration"
    git branch -M main
    echo "✅ Git repository initialized"
else
    echo "✅ Git repository already initialized"
fi

echo ""
echo "📋 Next Steps:"
echo "============="
echo ""
echo "1. Create a GitHub account (if you don't have one):"
echo "   https://github.com/signup"
echo ""
echo "2. Create a new empty repository called 'craft-value-site'"
echo "   https://github.com/new"
echo ""
echo "3. Run these commands in Terminal:"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/craft-value-site.git"
echo "   git push -u origin main"
echo ""
echo "4. Enable GitHub Pages:"
echo "   Repository → Settings → Pages"
echo "   Set Source to 'main' branch"
echo "   Your site will be live at:"
echo "   https://YOUR_USERNAME.github.io/craft-value-site/"
echo ""
echo "5. (Optional) Deploy to Netlify instead:"
echo "   Go to https://netlify.com"
echo "   Click 'Deploy manually'"
echo "   Drag and drop this folder"
echo "   ✅ Live in seconds!"
echo ""
echo "🎥 YouTube Video Configuration:"
echo "=============================="
echo "Your video is ready to go: https://www.youtube.com/watch?v=wVkbqHdr5FU"
echo ""
echo "To change the video, edit index.html around line 795:"
echo '  const DOCUMENTARY_EMBED_URL = "https://www.youtube.com/watch?v=YOUR_NEW_ID";'
echo ""
echo "✨ Site is ready to deploy!"
