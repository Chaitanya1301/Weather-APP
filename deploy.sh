#!/bin/bash
# =============================
# 🚀 React App Deployment Script
# =============================

echo "👉 Building production version..."
npm run build || { echo "❌ Build failed"; exit 1; }

echo "👉 Adding build folder to Git..."
git add build -f

echo "👉 Committing build..."
git commit -m "Deploy build"

echo "👉 Pushing subtree to gh-pages branch..."
git subtree push --prefix build origin gh-pages

echo "✅ Deployment complete!"
echo "🌐 Visit: https://chaitanya1301.github.io/Weather-APP/"
