# Architecture

## System Architecture
[Describe the overall architecture pattern]

Example:
This is a monolithic REST API built with a layered architecture:
- **Presentation Layer**: REST controllers
- **Service Layer**: Business logic
- **Data Access Layer**: Repository pattern with ORM
- **Infrastructure**: Authentication, logging, caching

## Tech Stack
[List all major technologies]

Example:
- **Runtime**: Node.js 18+
- **Framework**: Express.js
- **Database**: PostgreSQL 14
- **Cache**: Redis
- **Authentication**: JWT with Auth0
- **Testing**: Jest, Supertest

## Directory Structure
[Explain the codebase organization]

Example:
```
src/
├── controllers/    # HTTP request handlers
├── services/       # Business logic
├── repositories/   # Database access
├── models/         # Data models and types
├── middleware/     # Express middleware
├── utils/          # Helper functions
└── config/         # Configuration files
```

## Design Patterns
[Patterns used in the codebase]

Example:
- **Dependency Injection**: Constructor injection for testability
- **Repository Pattern**: Abstract data access
- **Service Layer**: Encapsulate business logic
- **Middleware Chain**: Request processing pipeline
- **Factory Pattern**: Object creation for complex entities

## Data Flow
[How data moves through the system]

Example:
1. Client sends HTTP request
2. Authentication middleware validates JWT
3. Controller receives request, validates input
4. Service layer processes business logic
5. Repository layer queries database
6. Response serialized and returned to client

## External Dependencies
[Third-party services and APIs]

Example:
- **Stripe API**: Payment processing
- **SendGrid**: Email notifications
- **AWS S3**: Image storage
- **Datadog**: Monitoring and logging

## Security Considerations
[Security architecture and practices]

Example:
- All endpoints require authentication except /health
- Role-based access control (RBAC) for admin functions
- SQL injection prevention via parameterized queries
- Rate limiting: 100 requests/minute per IP
- Passwords hashed with bcrypt (12 rounds)