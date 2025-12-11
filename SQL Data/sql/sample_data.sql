# Sample Data For Company Table
INSERT INTO COMPANY (COMPANY_ID, NAME, DOMAIN, STATUS, CREATED_AT)
VALUES (1, 'Legacy Systems Ltd', 'legacy.local', 'INACTIVE', DATE '2025-12-10');

INSERT INTO COMPANY (COMPANY_ID, NAME, DOMAIN, STATUS, CREATED_AT)
VALUES (2, 'Global IT Solutions', 'globalitsolutions.com', 'INACTIVE', DATE '2025-12-10');

INSERT INTO COMPANY (COMPANY_ID, NAME, DOMAIN, STATUS, CREATED_AT)
VALUES (3, 'NextGen Software Inc.', 'nextgensoft.com', 'ACTIVE', DATE '2025-12-10');

INSERT INTO COMPANY (COMPANY_ID, NAME, DOMAIN, STATUS, CREATED_AT)
VALUES (5, 'Petco Corp LLC', 'petcocorp.com', 'INACTIVE', DATE '2025-12-10');

INSERT INTO COMPANY (COMPANY_ID, NAME, DOMAIN, STATUS, CREATED_AT)
VALUES (7, 'Acme Corp', 'acme.com', 'ACTIVE', DATE '2025-12-10');

INSERT INTO COMPANY (COMPANY_ID, NAME, DOMAIN, STATUS, CREATED_AT)
VALUES (8, 'BrightPets', 'brightpets.io', 'ACTIVE', DATE '2025-12-10');

COMMIT;

# Sample Data for User_Account Table
INSERT INTO USER_ACCOUNT (user_id, company_id, name, contact, role, assigned_to)
VALUES (2, 1, 'Sarah Lee', 'slee@acctech.com', 'HELPDESK_AGENT', NULL);

INSERT INTO USER_ACCOUNT (user_id, company_id, name, contact, role, assigned_to)
VALUES (4, 1, 'Mark Johnson', 'mjohnson@acctech.com', 'HELPDESK_AGENT', Null);

INSERT INTO USER_ACCOUNT (user_id, company_id, name, contact, role, assigned_to)
VALUES (3, 1, 'Eve Brown', 'ebrown@acctech.com', 'END_USER', NULL);

INSERT INTO USER_ACCOUNT (user_id, company_id, name, contact, role, assigned_to)
VALUES (5, 2, 'Tom Jerry', 'tjerry@mmbpets.com', 'HELPDESK_AGENT', NULL);

INSERT INTO USER_ACCOUNT (user_id, company_id, name, contact, role, assigned_to)
VALUES (6, 2, 'Michael Cruz', 'mcruz@mmbpets.com', 'END_USER', 5);

INSERT INTO USER_ACCOUNT (user_id, company_id, name, contact, role, assigned_to)
VALUES (7, 2, 'Linda Wong', 'lwong@mmbpets.com', 'Admin', NULL);

INSERT INTO USER_ACCOUNT (user_id, company_id, name, contact, role, assigned_to)
VALUES (8, 3, 'Bob Thomas', 'bthomas@petcocorp.com', 'HELPDESK_AGENT', 10);

INSERT INTO USER_ACCOUNT (user_id, company_id, name, contact, role, assigned_to)
VALUES (9, 3, 'Jessica Smith', 'jsmith@petcocorp.com', 'END_USER', NULL);

INSERT INTO USER_ACCOUNT (user_id, company_id, name, contact, role, assigned_to)
VALUES (10, 3, 'David Kim', 'dkim@petcocorp.com', 'Admin', NULL);
-- Company 3 Users
INSERT INTO USER_ACCOUNT (company_id, name, contact, role, created_by)
VALUES (3, 'Kevin Hart', 'khart@acc.com', 'Helpdesk Agent', 'SYSTEM');

# Sample data for Priority Table 
INSERT INTO PRIORITY (PRIORITY_ID, NAME, SORT_ORDER, SLA_HOURS)
VALUES (3, 'Low', 1, 72);

INSERT INTO PRIORITY (PRIORITY_ID, NAME, SORT_ORDER, SLA_HOURS)
VALUES (4, 'Medium', 2, 48);

INSERT INTO PRIORITY (PRIORITY_ID, NAME, SORT_ORDER, SLA_HOURS)
VALUES (5, 'High', 3, 24);

INSERT INTO PRIORITY (PRIORITY_ID, NAME, SORT_ORDER, SLA_HOURS)
VALUES (6, 'Critical', 4, 4);



# Status sample_data.sql
INSERT INTO STATUS (status_id, status_name, description, is_closed)
VALUES (1, 'Open', 'Ticket has been created and is waiting to be worked on', 'N');

INSERT INTO STATUS (status_id, status_name, description, is_closed)
VALUES (2, 'In Progress', 'A technician is currently working on the ticket', 'N');

INSERT INTO STATUS (status_id, status_name, description, is_closed)
VALUES (3, 'On Hold', 'Ticket is paused waiting for user or vendor response', 'N');

INSERT INTO STATUS (status_id, status_name, description, is_closed)
VALUES (4, 'Resolved', 'Issue has been fixed but awaiting user confirmation', 'N');

INSERT INTO STATUS (status_id, status_name, description, is_closed)
VALUES (5, 'Closed', 'Ticket is fully completed and no further action is required', 'Y');

INSERT INTO STATUS (status_id, status_name, description, is_closed)
VALUES (6, 'Cancelled', 'Ticket was cancelled by the user or system admin', 'Y');

# Category sample_data.sql
INSERT INTO CATEGORY (category_id, category_name) VALUES (1, 'Hardware');
INSERT INTO CATEGORY (category_id, category_name) VALUES (2, 'Software');
INSERT INTO CATEGORY (category_id, category_name) VALUES (3, 'Network');
INSERT INTO CATEGORY (category_id, category_name) VALUES (4, 'Access & Accounts');
INSERT INTO CATEGORY (category_id, category_name) VALUES (5, 'Email');
INSERT INTO CATEGORY (category_id, category_name) VALUES (6, 'Security');
INSERT INTO CATEGORY (category_id, category_name) VALUES (7, 'Other');

# Subcategory sample_data.sql
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (1, 1, 'Laptop');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (2, 1, 'Desktop');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (3, 1, 'Printer');

INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (4, 2, 'Application Crash');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (5, 2, 'Software Installation');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (6, 2, 'Update Issues');

INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (7, 3, 'Wi-Fi Connectivity');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (8, 3, 'VPN Access');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (9, 3, 'Slow Network');

INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (10, 4, 'Password Reset');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (11, 4, 'Account Locked');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (12, 4, 'Permission Request');

INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (13, 5, 'Email Not Sending');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (14, 5, 'Mailbox Full');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (15, 5, 'Outlook Setup');

INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (16, 6, 'Antivirus Alert');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (17, 6, 'Suspicious Activity');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (18, 6, 'Access Violation');

INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (19, 7, 'General Inquiry');
INSERT INTO SUBCATEGORY (subcategory_id, category_id, subcategory_name) VALUES (20, 7, 'Other Issue');

# Sample Data for Ticket Table
INSERT INTO TICKET (
    TICKET_ID, COMPANY_ID, CREATED_BY, ASSIGNED_TO, PRIORITY_ID, STATUS_ID,
    TITLE, SUBJECT, DESCRIPTION, CREATED_DATE, SLA_DUE_AT, SUBCATEGORY_ID
)
VALUES (1, 1, 10, 5, 5, 1, 'Legacy server outage','Server Down',
    'Production server is not responding. Users are unable to log in.',
    SYSDATE - 2, SYSDATE + 1, 3
);

INSERT INTO TICKET (
    TICKET_ID, COMPANY_ID, CREATED_BY, ASSIGNED_TO, PRIORITY_ID, STATUS_ID,
    TITLE, SUBJECT, DESCRIPTION, CREATED_DATE, SLA_DUE_AT, SUBCATEGORY_ID
)
VALUES (2, 2, 7, 2, 4, 2, 'Email delivery failure', 'Email Issue',
    'Users at Global IT Solutions cannot send outbound emails.',
    SYSDATE - 1, SYSDATE + 2, 4
);

INSERT INTO TICKET (
    TICKET_ID, COMPANY_ID, CREATED_BY, ASSIGNED_TO, PRIORITY_ID, STATUS_ID,
    TITLE, SUBJECT, DESCRIPTION, CREATED_DATE, SLA_DUE_AT, SUBCATEGORY_ID
)
VALUES (3, 3, 8, 5, 3, 1, 'Bug in billing module', 'Software Bug',
    'NextGen Software reports incorrect totals in the billing engine.',
    SYSDATE - 3, SYSDATE + 1, 6
);

INSERT INTO TICKET (
    TICKET_ID, COMPANY_ID, CREATED_BY, ASSIGNED_TO, PRIORITY_ID, STATUS_ID,
    TITLE, SUBJECT, DESCRIPTION, CREATED_DATE, SLA_DUE_AT, SUBCATEGORY_ID
)
VALUES (4, 5, 9, 2, 6, 3, 'Network slowness at Petco Corp',
    'Network Problem', 'Users experiencing intermittent packet loss and slow connection.',
    SYSDATE - 5,     SYSDATE - 1, 2
);    

INSERT INTO TICKET (
    TICKET_ID, COMPANY_ID, CREATED_BY, ASSIGNED_TO, PRIORITY_ID, STATUS_ID,
    TITLE, SUBJECT, DESCRIPTION, CREATED_DATE, SLA_DUE_AT, SUBCATEGORY_ID
)
VALUES ( 5, 7, 3, 3, 4, 4, 'Laptop not booting','Hardware Issue', 'Employee reports laptop fails to start after Windows update.',
    SYSDATE - 7, SYSDATE, 7);


INSERT INTO TICKET (
    TICKET_ID, COMPANY_ID, CREATED_BY, ASSIGNED_TO, PRIORITY_ID, STATUS_ID,
    TITLE, SUBJECT, DESCRIPTION, CREATED_DATE, SLA_DUE_AT, SUBCATEGORY_ID
)
VALUES (6, 8, 10, 5, 3, 1,'BrightPets mobile app crash','App Crash', 
  'The BrightPets iOS app crashes when users attempt to upload photos.',SYSDATE - 1,
    SYSDATE + 3, 8
);

COMMIT;


