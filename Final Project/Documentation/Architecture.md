# System Architecture

The backend follows a strict 4-layer architecture:

## 1. UI Layer
Handles user interaction and calls API endpoints.
- HTML, CSS, And JS
- Sends requests to backend controllers

## 2. Controller Layer (FastAPI Routes)
Receives HTTP requests and forwards them to the service layer.
- Defines endpoints such as /tickets, /companies, etc.

## 3. Business Logic Layer
Applies rules, validation, workflows (SLA, assignment, etc.)
- No SQL inside this layer

## 4. Data Access Layer (DAL)
Executes raw SQL queries against Oracle.
- No ORM used
- Each table has a repo file

## Technologies
- JavaScript Node.js
- Oracle SQL Developer database
- Raw SQL queries only (no ORM)
- HTML & CSS UI

## Flow
UI → Controller → Service → DAL → Oracle

