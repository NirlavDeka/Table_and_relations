# Table_and_relations

## User Role & Status Management System Database
A relational database schema designed for managing user accounts, dynamic role assignments, and time-tracked activity status tracking.

## Project Overview
This project provides a robust, normalized SQL database structure for handling basic identity management and status monitoring. It supports:

### User Management: 
Core account authentication attributes including username, email, password hashes, and salts.

### Role-Based Access Control (RBAC): 
Temporal role tracking enabling historical and active role assignments with start and end dates.

###User Work Status Tracking: 
Time-stamped user state transitions to track availability, leave, or operational work status.

## Database Architecture & Tables
### Master Tables
role: Stores predefined user roles (such as Administrator or Software Engineer).

status: Defines potential user activity states and whether a specific state counts as actively working.

user_account: Stores core credential details, identity fields, and security metadata like password hash algorithms and salts.

### Mapping & Junction Tables
user_has_role: Junction table linking users to their assigned roles, maintaining an explicit timeline of start and end dates for role changes.

user_has_status: 
Junction table keeping a log of user availability transitions over specific periods of time.

## Usage & Maintenance Notes
### Referential Integrity & Data Cleanup:
Due to foreign key constraints, parent tables cannot be truncated directly without violating relational integrity rules.

### To reset or clear the database:
Deletion Sequence: Data must be removed from junction tables (child records) prior to deleting records from master tables (parent records).

### Alternative Bulk Operations: 
In database environments like MySQL, foreign key checks must be temporarily disabled if executing truncate commands across connected tables.

## License
This project is open-source and available under the MIT License.
