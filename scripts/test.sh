#!/bin/bash

# Test script - runs all tests and checks
# This script should be run before committing changes

set -e  # Exit on error

echo "🧪 Running tests..."

# [PLACEHOLDER: Add your testing commands]
# Examples:
# - Unit tests
# - Integration tests
# - Linting
# - Type checking
# - Code coverage

# Example for Node.js project:
if [ -f "package.json" ]; then
    echo "📝 Running linter..."
    npm run lint || true  # Don't exit on lint errors
    
    echo "🔍 Running type check..."
    npm run type-check || true
    
    echo "✅ Running unit tests..."
    npm test
    
    echo "📊 Generating coverage report..."
    npm run test:coverage || true
fi

# Example for Python project:
if [ -f "requirements.txt" ]; then
    echo "📝 Running linter..."
    flake8 . || true
    
    echo "✅ Running tests..."
    pytest
    
    echo "📊 Coverage report..."
    pytest --cov=src tests/ || true
fi

# [PLACEHOLDER: Additional checks]
# Examples:
# echo "🔒 Running security audit..."
# npm audit
# echo "📦 Checking for outdated dependencies..."
# npm outdated

echo ""
echo "✅ All tests passed!"