# Project Name

## Claude Code Onboarding

This repository is configured for use with Claude Code, an AI-powered coding assistant.

### Getting Started with Claude Code

1. **Install Claude Code CLI**
   ```bash
   # Follow installation instructions at https://docs.claude.com
   ```

2. **Review Context Documentation**
   - All project context is in the `context/` directory
   - Review each markdown file to understand the project structure

3. **Run Setup**
   ```bash
   ./scripts/setup.sh
   ```

4. **Start Coding with Claude**
   ```bash
   claude-code "Implement feature X following our architecture guidelines"
   ```

### Directory Structure

- `context/` - Project documentation for Claude Code
- `scripts/` - Automation scripts for common tasks
- `.clauderc` - Claude Code configuration file

### Key Files for Claude Code

- **PROJECT_OVERVIEW.md** - High-level project description
- **ARCHITECTURE.md** - System architecture and design patterns
- **DEVELOPMENT_GUIDELINES.md** - Coding standards and practices
- **API_CONVENTIONS.md** - API design and naming conventions
- **DEPENDENCIES.md** - Technology stack and dependencies

### Contributing

When adding features or making changes:
1. Update relevant context documentation
2. Follow guidelines in DEVELOPMENT_GUIDELINES.md
3. Run tests with `./scripts/test.sh`
4. Update this README if needed

### Support

For Claude Code issues: https://support.claude.com

For project issues: https://github.com/elvagabondcoder/coding-agent-boilerplate/issues