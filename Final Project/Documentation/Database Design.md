# Database Design

## Entity-Relationship Diagram (ERD)
The system supports multi-tenant help desk operations across multiple companies.

Entities:
- Company
- User_Account
- Priority
- Status
- Category
- Subcategory
- Ticket
- Ticket_Comment
- Ticket_Status_History
- Knowledge_Base_Article
- KB_Keyword

## Normalization
All tables are in **3rd Normal Form (3NF)**:
- No repeating groups (1NF)
- Every non-key attribute depends on the full PK (2NF)
- No transitive dependencies (3NF)

## Key Relationships
- Company → Users (1:M)
- Company → Tickets (1:M)
- User → Tickets Created (1:M)
- User → Tickets Assigned (1:M)
- Status → Tickets (1:M)
- Priority → Tickets (1:M)
- Category → Subcategory (1:M)
- Ticket → Ticket_Comment (1:M)
- Ticket → Ticket_Status_History (1:M)
- Knowledge_Base_Article → KB_Keyword (1:M)

## Purpose
This design enables:
- Multi-company support
- Ticket lifecycle tracking
- SLA monitoring
- Technician assignment
- Knowledge base recommendation
- Full audit history

