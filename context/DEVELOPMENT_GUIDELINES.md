# Development Guidelines

## Code Style

### General Principles
[Your coding philosophy]

Example:
- **Clarity over cleverness**: Code should be self-documenting
- **Consistency**: Follow established patterns in the codebase
- **YAGNI**: You aren't gonna need it - avoid premature optimization
- **DRY**: Don't repeat yourself, but don't over-abstract

### Naming Conventions
[How to name things]

Example:
- **Variables**: camelCase (e.g., `userId`, `orderTotal`)
- **Constants**: UPPER_SNAKE_CASE (e.g., `MAX_RETRY_ATTEMPTS`)
- **Functions**: Verbs, camelCase (e.g., `calculateTotal`, `fetchUser`)
- **Classes**: PascalCase (e.g., `OrderService`, `UserRepository`)
- **Files**: Match class name or be kebab-case (e.g., `order-service.js`)
- **Booleans**: is/has prefix (e.g., `isValid`, `hasPermission`)

### File Organization
[How to structure files]

Example:
- One class per file
- Group related functions in modules
- Keep files under 300 lines (split if larger)
- Organize imports: external, internal, relative
- Export public API at bottom of file

## Testing Standards

### Test Coverage
[Coverage requirements]

Example:
- Minimum 80% code coverage
- 100% coverage for service layer
- All edge cases must have tests
- Critical paths require integration tests

### Test Structure
[How to write tests]

Example:
```javascript
describe('OrderService', () => {
  describe('createOrder', () => {
    it('should create order with valid data', () => {
      // Arrange
      const orderData = {...};
      
      // Act
      const result = orderService.createOrder(orderData);
      
      // Assert
      expect(result.id).toBeDefined();
    });
    
    it('should throw error for invalid data', () => {
      // Test error cases
    });
  });
});
```

## Error Handling

### Error Patterns
[How to handle errors]

Example:
- Use custom error classes (e.g., `ValidationError`, `NotFoundError`)
- Always include error messages
- Log errors with context
- Return appropriate HTTP status codes
- Never expose stack traces to clients in production

### Example
```javascript
class ValidationError extends Error {
  constructor(message, field) {
    super(message);
    this.name = 'ValidationError';
    this.field = field;
    this.statusCode = 400;
  }
}
```

## Git Workflow

### Branch Naming
[Branch conventions]

Example:
- `feature/add-payment-processing`
- `bugfix/fix-order-calculation`
- `hotfix/security-patch`
- `refactor/improve-error-handling`

### Commit Messages
[Commit message format]

Example:
```
<type>: <subject>

<body>

<footer>
```

Types: feat, fix, docs, style, refactor, test, chore

Example:
```
feat: add payment processing endpoint

Implement Stripe integration for order payments.
Includes webhook handling for payment confirmation.

Closes #123
```

## Code Review Checklist
[What to check in reviews]

Example:
- [ ] Code follows style guide
- [ ] Tests are included and passing
- [ ] Documentation is updated
- [ ] No security vulnerabilities
- [ ] Performance is acceptable
- [ ] Error handling is appropriate
- [ ] No breaking changes (or properly versioned)