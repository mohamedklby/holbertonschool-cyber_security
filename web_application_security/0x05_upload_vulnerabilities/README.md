📁 0x05 — Upload Vulnerabilities
📌 Description

This project focuses on identifying and exploiting different types of file upload vulnerabilities in a web application.

The target environment simulates a real infrastructure composed of multiple subdomains. The main goal is to identify which subdomain contains a vulnerable upload feature, then progressively bypass the security mechanisms implemented around file uploads.

🎯 Learning Objectives

Through this project, we learn how to:

Identify a vulnerable subdomain

Analyze a file upload mechanism

Understand the difference between client-side and server-side validation

Bypass file extension filtering

Manipulate filenames using special characters

Understand and modify magic numbers

Bypass file size restrictions

Exploit upload vulnerabilities to execute PHP code and retrieve flags

🧠 Project Overview

The project follows a logical progression:

Discovery Phase
Identify the subdomain that contains a vulnerable upload feature.

Client-Side Bypass
Bypass validation implemented only in JavaScript.

Server-Side Filename Bypass
Exploit weaknesses in extension validation using special characters.

Magic Number Bypass
Manipulate file binary signatures to bypass file type verification.

File Size Restriction Bypass
Circumvent upload size limitations imposed by the application.

At each step, misconfigurations allow the upload of a PHP file capable of displaying a flag.

🛠 Skills Developed

Web reconnaissance

Subdomain enumeration

HTTP analysis

Request manipulation (Burp Suite, curl, etc.)

Understanding HTTP headers

File upload security testing

Web shell exploitation

🔐 Security Relevance

File upload vulnerabilities are among the most critical web security issues.
Improperly secured upload functionality can lead to:

Remote Code Execution (RCE)

Web shell deployment

Unauthorized server access

Full application compromise

This project provides hands-on experience with realistic scenarios encountered during security assessments and penetration testing.
