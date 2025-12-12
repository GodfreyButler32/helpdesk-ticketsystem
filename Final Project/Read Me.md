# Help Desk Ticket System
# Project Overview 

This project is a fully designed Help Desk Ticket System that supports multiple companies, multiple user roles, and complete ticket lifecycle tracking. It models how real support teams operate by allowing users to create tickets, technicians to work on them, and administrators to oversee the entire environment.

The goal of the project is to build a system that is:

Organized
Scalable
Easy to maintain
Accurate and reliable
To achieve this, the backend uses Node.js with direct Oracle SQL queries, and the database is designed in 3rd Normal Form to ensure clean relationships and strong data integrity.

# Key features
Multi-company (multi-tenant) support

User roles: Admin, Technician, End User

Ticket creation and assignment

Ticket workflow statuses (Open → In Progress → On Hold → Resolved → Closed)

SLA tracking and due-date management

Category and subcategory classification

Internal ticket comments


Tech Stack
• Backend: Node.js, Express
• Database: Oracle SQL Developer
• Data Access: Direct SQL (No ORM)

Architecture
UI Layer → Controller Layer → Business Logic Layer → Data Access Layer → Oracle Database

Documentation
Detailed documentation is available in the docs folder, including database design, setup instructions,
system architecture, and user guide.

Author
Godfrey Butler
Master of Computer Science – Monroe Colleg
