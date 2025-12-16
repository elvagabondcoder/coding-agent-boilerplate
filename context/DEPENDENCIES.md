# Dependencies

## Runtime Dependencies

### Core Framework
[Main framework and version]

Example:
```json
{
  "express": "^4.18.0"
}
```
**Why**: Industry-standard Node.js web framework with extensive middleware ecosystem
**Alternatives considered**: Fastify (chose Express for team familiarity)

### Database
[Database client libraries]

Example:
```json
{
  "pg": "^8.11.0",
  "typeorm": "^0.3.0"
}
```
**Why**: PostgreSQL for relational data, TypeORM for migrations and type safety
**Configuration**: Connection pooling with max 20 connections

### Authentication
[Auth libraries]

Example:
```json
{
  "jsonwebtoken": "^9.0.0",
  "bcrypt": "^5.1.0"
}
```
**Why**: JWT for stateless auth, bcrypt for password hashing
**Security**: 12 rounds for bcrypt, 1-hour JWT expiry

### Validation
[Input validation]

Example:
```json
{
  "joi": "^17.9.0"
}
```
**Why**: Schema-based validation with excellent error messages
**Usage**: Validate all request bodies and query parameters

### Logging
[Logging framework]

Example:
```json
{
  "winston": "^3.8.0"
}
```
**Why**: Structured logging with multiple transports
**Configuration**: Console in dev, JSON to file in production

## Development Dependencies

### Testing
[Test frameworks and tools]

Example:
```json
{
  "jest": "^29.5.0",
  "supertest": "^6.3.0",
  "@types/jest": "^29.5.0"
}
```
**Why**: Jest for unit tests, Supertest for API integration tests

### Code Quality
[Linters and formatters]

Example:
```json
{
  "eslint": "^8.40.0",
  "prettier": "^2.8.0",
  "husky": "^8.0.0",
  "lint-staged": "^13.2.0"
}
```
**Why**: ESLint for code quality, Prettier for formatting, Husky for pre-commit hooks

## Package Management

### Lock Files
[Package manager used]

Example:
- Using **npm** (package-lock.json)
- Always commit lock files
- Run `npm ci` in CI/CD (not `npm install`)

### Update Policy
[How to handle updates]

Example:
- Security updates: Apply immediately
- Minor updates: Review monthly
- Major updates: Plan and test thoroughly
- Use `npm audit` to check for vulnerabilities

## Version Pinning Strategy
[Semver usage]

Example:
- Production dependencies: Use ^ for minor updates
- Security-critical deps: Pin exact versions
- Dev dependencies: Use ^ freely
- Never use * or x

## Deprecated Dependencies
[Dependencies being phased out]

Example:
- **body-parser**: Now built into Express 4.16+
- **request**: Deprecated, migrate to node-fetch or axios

## Environment-Specific Dependencies
[Different deps per environment]

Example:
- **Production**: Only runtime dependencies installed
- **Development**: All dev dependencies
- **CI/CD**: Testing and build tools only

## License Compliance
[Licensing requirements]

Example:
- All dependencies must be MIT, Apache 2.0, or BSD
- GPL dependencies are prohibited
- Check licenses before adding new packages