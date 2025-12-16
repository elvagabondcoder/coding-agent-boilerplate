# API Conventions

## RESTful Design

### Resource Naming
[How to name API resources]

Example:
- Use plural nouns: `/users`, `/orders`, `/products`
- Use kebab-case for multi-word resources: `/order-items`
- Nested resources: `/users/{userId}/orders`
- Avoid verbs in URLs (use HTTP methods instead)

### HTTP Methods
[When to use each method]

Example:
- **GET**: Retrieve resource(s) - idempotent, no side effects
- **POST**: Create new resource
- **PUT**: Replace entire resource
- **PATCH**: Partially update resource
- **DELETE**: Remove resource

### Endpoint Examples
```
GET    /api/v1/users           # List all users
GET    /api/v1/users/{id}      # Get specific user
POST   /api/v1/users           # Create user
PUT    /api/v1/users/{id}      # Replace user
PATCH  /api/v1/users/{id}      # Update user fields
DELETE /api/v1/users/{id}      # Delete user
```

## Request/Response Format

### Request Body
[Standard request structure]

Example:
```json
{
  "data": {
    "type": "user",
    "attributes": {
      "email": "user@example.com",
      "name": "John Doe"
    }
  }
}
```

### Response Format
[Standard response structure]

Success:
```json
{
  "data": {
    "id": "123",
    "type": "user",
    "attributes": {
      "email": "user@example.com",
      "name": "John Doe"
    }
  },
  "meta": {
    "timestamp": "2024-01-15T10:30:00Z"
  }
}
```

Error:
```json
{
  "errors": [
    {
      "status": "400",
      "code": "VALIDATION_ERROR",
      "title": "Invalid input",
      "detail": "Email format is invalid",
      "source": {
        "pointer": "/data/attributes/email"
      }
    }
  ]
}
```

## Status Codes
[When to use each status code]

Example:
- **200 OK**: Successful GET, PUT, PATCH, or DELETE
- **201 Created**: Successful POST
- **204 No Content**: Successful DELETE with no response body
- **400 Bad Request**: Invalid input
- **401 Unauthorized**: Missing or invalid authentication
- **403 Forbidden**: Authenticated but not authorized
- **404 Not Found**: Resource doesn't exist
- **409 Conflict**: Resource conflict (e.g., duplicate email)
- **422 Unprocessable Entity**: Validation failed
- **500 Internal Server Error**: Server error

## Pagination
[How to handle pagination]

Example:
Request:
```
GET /api/v1/users?page=2&limit=20
```

Response:
```json
{
  "data": [...],
  "meta": {
    "page": 2,
    "limit": 20,
    "total": 150,
    "totalPages": 8
  },
  "links": {
    "self": "/api/v1/users?page=2&limit=20",
    "first": "/api/v1/users?page=1&limit=20",
    "prev": "/api/v1/users?page=1&limit=20",
    "next": "/api/v1/users?page=3&limit=20",
    "last": "/api/v1/users?page=8&limit=20"
  }
}
```

## Filtering and Sorting
[Query parameter conventions]

Example:
```
GET /api/v1/products?category=electronics&minPrice=100&sort=-price,name
```

- Filter: `?field=value`
- Range: `?minPrice=100&maxPrice=500`
- Sort: `?sort=-createdAt,name` (- for descending)

## Versioning
[API version strategy]

Example:
- Include version in URL: `/api/v1/users`
- Major version only (v1, v2)
- Breaking changes require new version
- Maintain backward compatibility within version

## Authentication
[Auth header format]

Example:
```
Authorization: Bearer <jwt_token>
```

## Rate Limiting
[Rate limit headers]

Example:
```
X-RateLimit-Limit: 100
X-RateLimit-Remaining: 87
X-RateLimit-Reset: 1642252800
```