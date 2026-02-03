# SQL & NoSQL Injection – Global README

This project introduces **SQL Injection (SQLi)** and **NoSQL Injection (NoSQLi)** vulnerabilities through a series of practical exercises in a controlled lab environment.

All tasks are located in:
`web_application_security/0x03_sql_nosql_injection`

---

## Project Overview

The goal of this project is to understand how injection vulnerabilities work, how they can be identified, and how attackers may exploit them when user input is not properly handled.

You will progressively:

* Identify vulnerable input parameters
* Extract database metadata
* Retrieve sensitive data
* Exploit blind and second-order injections
* Discover and exploit NoSQL injection flaws

---

## SQL Injection Tasks

### Purpose

Learn how SQL injections occur and how they can be exploited to interact with a relational database.

### What You Will Do

* Identify vulnerable HTTP parameters
* Trigger SQL errors and logic changes
* Extract database version and table names
* Retrieve sensitive data such as flags
* Exploit blind SQL injections using time delays
* Perform second-order SQL injections where payloads are stored and executed later

### Key Concepts

* User input reflection
* UNION-based injection
* INFORMATION_SCHEMA usage
* Time-based blind SQL injection
* Stored (second-order) injection

---

## NoSQL Injection Tasks

### Purpose

Understand how NoSQL databases (e.g. MongoDB) can also be vulnerable to injection attacks.

### What You Will Do

* Identify endpoints vulnerable to NoSQL injection
* Manipulate JSON-based queries
* Bypass authentication mechanisms
* Enumerate user accounts
* Perform actions as other users to obtain a flag

### Key Concepts

* JSON query structure
* NoSQL operators such as `$ne` and `$gt`
* Authentication bypass
* User enumeration

---

## Output Files

Each task requires saving either:

* the name of a vulnerable parameter or endpoint, or
* a discovered flag

These values must be written to the corresponding `.txt` file as specified in the project instructions.

---

⚠️ This project is for educational purposes only. The techniques demonstrated must be used responsibly and only in authorized environments.
