# Project Overview

## Purpose
[Describe what this project does and why it exists. Be specific about the problem it solves.]

Example:
This is an e-commerce API that handles product catalog management, order processing, and payment integration for online retail businesses.

## Target Users
[Who uses this system? What are their roles?]

Example:
- **Customers**: Browse products, place orders, track shipments
- **Administrators**: Manage inventory, process refunds, view analytics
- **Integration Partners**: Access product data via REST API

## Core Functionality
[List the main features and capabilities]

Example:
1. Product catalog with search and filtering
2. Shopping cart and checkout flow
3. Payment processing (Stripe integration)
4. Order fulfillment tracking
5. User authentication and authorization
6. Admin dashboard for inventory management

## Business Rules
[Important business logic that Claude should understand]

Example:
- Orders cannot be cancelled after shipment begins
- Discounts are mutually exclusive (only one per order)
- Inventory is reserved for 15 minutes during checkout
- Refunds must be approved by managers for orders >$500

## Key Constraints
[Technical or business constraints]

Example:
- Must support 10,000 concurrent users
- 99.9% uptime SLA requirement
- PCI DSS compliance for payment data
- GDPR compliance for user data

## Non-Goals
[What this project explicitly does NOT do]

Example:
- Does not handle physical logistics/shipping
- Does not provide customer service chat
- Does not include mobile apps (API only)