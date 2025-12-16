#!/bin/bash

# Setup script for new developers
# This script should be run once when setting up the project locally

set -e  # Exit on error

echo "🚀 Setting up project..."

# [PLACEHOLDER: Add your language/framework specific setup]
# Examples:
# - Install dependencies (npm install, pip install -r requirements.txt, etc.)
# - Set up database
# - Create local config files
# - Run migrations

# Example for Node.js project:
if [ -f "package.json" ]; then
    echo "📦 Installing Node.js dependencies..."
    npm install
fi

# Example for Python project:
if [ -f "requirements.txt" ]; then
    echo "🐍 Installing Python dependencies..."
    pip install -r requirements.txt
fi

# [PLACEHOLDER: Database setup]
# Example:
# echo "🗄️  Setting up database..."
# createdb myproject_dev
# npm run migrate

# [PLACEHOLDER: Environment setup]
# Example:
# if [ ! -f ".env" ]; then
#     echo "📝 Creating .env file from template..."
#     cp .env.example .env
#     echo "⚠️  Please update .env with your local configuration"
# fi

# [PLACEHOLDER: Initial data seeding]
# Example:
# echo "🌱 Seeding database with initial data..."
# npm run seed

echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Review the context/ directory to understand the project"
echo "2. Update .env with your local configuration (if applicable)"
echo "3. Run './scripts/test.sh' to verify everything works"
echo "4. Start coding with 'claude-code' or your normal workflow"