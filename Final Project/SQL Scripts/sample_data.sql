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

#Sample data for Ticket Comment
INSERT INTO TICKET_COMMENT (
    COMMENT_ID, TICKET_ID, USER_ID, COMMENT_TEXT, CREATED_AT
)
VALUES ( 1, 1, 9,
    'Reviewed the authentication logs. The server is not responding to pings. Investigating possible hardware failure.',
    SYSDATE - 0.45
);

INSERT INTO TICKET_COMMENT (
    COMMENT_ID, TICKET_ID, USER_ID, COMMENT_TEXT, CREATED_AT
)
VALUES (2, 1, 3,
    'Thanks for the update. This issue is affecting all departments. Please prioritize resolution.',
    SYSDATE - 0.40
);

INSERT INTO TICKET_COMMENT (
    COMMENT_ID, TICKET_ID, USER_ID, COMMENT_TEXT, CREATED_AT
)
VALUES (3, 2, 10, 'Mail queue cleared manually. Messages are flowing again, but root cause still under investigation.',
    SYSDATE - 0.8
);

INSERT INTO TICKET_COMMENT (COMMENT_ID, TICKET_ID, USER_ID, COMMENT_TEXT, CREATED_AT
)
VALUES ( 4, 2, ,'Users confirmed email delivery is working. Awaiting final confirmation before resolving the ticket.',
    SYSDATE - 0.75
);

INSERT INTO TICKET_COMMENT (
    COMMENT_ID, TICKET_ID, USER_ID, COMMENT_TEXT, CREATED_AT
)
VALUES ( 5, 3, 10, 'Reproduced the billing calculation bug in the test environment. Logged all error traces for engineering.',
    SYSDATE - 1.5
);

INSERT INTO TICKET_COMMENT (
    COMMENT_ID, TICKET_ID, USER_ID, COMMENT_TEXT, CREATED_AT
)
VALUES ( 6, 4, 7, 'Network latency appears to be originating from the core switch. Running extended diagnostics.',
    SYSDATE - 2.2
    );

# Sample for Data Knowledge_Base_Article 
INSERT INTO KNOWLEDGE_BASE_ARTICLE (
    ARTICLE_ID, TITLE, CONTENT, CREATED_AT
)
VALUES (
    1, 'How to Troubleshoot Server Connectivity Issues',
    'This article provides steps to diagnose server connectivity problems, including ping tests, firewall verification, and service availability checks.',
    SYSDATE - 10
);

INSERT INTO KNOWLEDGE_BASE_ARTICLE (
    ARTICLE_ID, TITLE, CONTENT, CREATED_AT
)
VALUES (
    2,'Resetting a User Password in the Identity Portal',
    'Follow these steps to reset a user password using the identity management system: navigate to Users, select the account, choose Reset Password, and send temporary credentials.',
    SYSDATE - 8
);

INSERT INTO KNOWLEDGE_BASE_ARTICLE (
    ARTICLE_ID, TITLE, CONTENT, CREATED_AT
)
VALUES (
    3, 'How to Resolve Email Delivery Failures',
    'Learn how to diagnose outbound email issues by checking message queues, SMTP logs, spam filters, and DNS MX configurations.',
    SYSDATE - 5
);

INSERT INTO KNOWLEDGE_BASE_ARTICLE (
    ARTICLE_ID, TITLE, CONTENT, CREATED_AT
)
VALUES (
    4, 'Application Crash Troubleshooting Guide',
    'This guide outlines steps to capture application logs, reproduce crashes, check dependency updates, and gather system information for developers.',
    SYSDATE - 3
);

INSERT INTO KNOWLEDGE_BASE_ARTICLE (
    ARTICLE_ID, TITLE, CONTENT, CREATED_AT
)
VALUES (5, 'Network Latency and Packet Loss Diagnosis',
    'This article explains how to identify the cause of network slowness using traceroute, bandwidth monitoring, and switch diagnostics.',
    SYSDATE - 1
);

# Sample Data for KB_Keyword
-- Article 1: Server Connectivity Issues
INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (1, 'server', 2);

INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (2, 'connectivity', 3);

INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (3, 'network', 1);


-- Article 2: Resetting a User Password
INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (4, 'password', 2);

INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (5, 'identity', 2);

INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (6, 'user', 2);


-- Article 3: Email Delivery Failures
INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (7, 'email', 3);

INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (8, 'smtp', 3);

INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (9, 'delivery', 3);


-- Article 4: Application Crash Troubleshooting
INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (10, 'application', 4);

INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (11, 'crash', 4);

INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (12, 'logs', 4);


-- Article 5: Network Latency Diagnosis
INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (13, 'latency', 5);

INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (14, 'packet loss', 5);

INSERT INTO KB_KEYWORD (KEYWORD_ID, KEYWORD, ARTICLE_ID)
VALUES (15, 'traceroute', 5);


# Sample Data for Ticket_Status_History
    
INSERT INTO TICKET_STATUS_HISTORY (
TICKET_STATUS_HISTORY_ID, TICKET_ID,
FROM_STATUS_ID, TO_STATUS_ID, CHANGE_BY, CHANGE_DATE
)
VALUES (1, 1, NULL, 1, 2, SYSDATE - 0.5);

INSERT INTO TICKET_STATUS_HISTORY (
TICKET_STATUS_HISTORY_ID, TICKET_ID,
FROM_STATUS_ID, TO_STATUS_ID, CHANGE_BY, CHANGE_DATE
)
VALUES (2, 1, 1, 2, 3, SYSDATE - 0.45);

INSERT INTO TICKET_STATUS_HISTORY (
TICKET_STATUS_HISTORY_ID, TICKET_ID,
FROM_STATUS_ID, TO_STATUS_ID, CHANGE_BY, CHANGE_DATE
)
VALUES (3, 1, 2, 3, 4, SYSDATE - 0.40);

INSERT INTO TICKET_STATUS_HISTORY VALUES (4, 2, NULL, 1, 3, SYSDATE - 1.2);

INSERT INTO TICKET_STATUS_HISTORY VALUES (5, 2, 1, 2, 6, SYSDATE - 1.0);

INSERT INTO TICKET_STATUS_HISTORY VALUES (7, 3, NULL, 1, 5, SYSDATE - 2.2);

INSERT INTO TICKET_STATUS_HISTORY VALUES (9, 4, NULL, 1, 7, SYSDATE - 3.4);

INSERT INTO TICKET_STATUS_HISTORY VALUES (11, 5, NULL, 1, 8, SYSDATE - 5.3);

INSERT INTO TICKET_STATUS_HISTORY VALUES (12, 5, 1, 2, 7, SYSDATE - 5.0);

INSERT INTO TICKET_STATUS_HISTORY VALUES (14, 6, NULL, 1, 2, SYSDATE - 0.25);
INSERT INTO TICKET_STATUS_HISTORY VALUES (15, 6, 1, 2, 10, SYSDATE - 0.20);
INSERT INTO TICKET_STATUS_HISTORY VALUES (16, 6, 2, 3, 4, SYSDATE - 0.15);
