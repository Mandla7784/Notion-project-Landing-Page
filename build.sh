#!/bin/bash

# Create dist directory
mkdir -p dist/css
mkdir -p dist/assets

# Compile SCSS to CSS
echo "Compiling SCSS..."
sass src/styles/styles.scss dist/css/styles.css --style compressed

# Copy HTML file and update CSS path
echo "Copying HTML..."
sed 's|./styles/styles.css|./css/styles.css|g' src/index.html > dist/index.html

# Copy assets
echo "Copying assets..."
cp -r src/assets/* dist/assets/

echo "Build complete! Files are in the 'dist' directory."