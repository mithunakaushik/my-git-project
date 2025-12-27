# AWS Learning Project – Shell Scripting with AWS CLI

## 📌 Project Overview
This project demonstrates how **AWS CLI commands can be automated using Bash (shell scripting)** on a Linux system.  
The goal of this project is to understand how DevOps engineers interact with AWS services programmatically for learning and automation purposes.

The script focuses on **read-only and educational AWS commands** and follows AWS security best practices.

---

## 🎯 Project Objective
- Learn shell scripting fundamentals
- Understand AWS CLI command usage
- Explore core AWS services using automation
- Practice DevOps-style scripting on a Linux environment

---

## 🛠️ Technologies Used
- Linux (Ubuntu)
- Bash / Shell Scripting
- AWS CLI
- AWS EC2, S3, IAM

---

## 🔐 AWS Authentication Method
AWS CLI authentication is handled using an **IAM Role attached to the EC2 instance**.

This approach:
- Avoids hardcoding access keys
- Follows AWS security best practices
- Is commonly used in real-world DevOps environments

---

## 📂 Project Structure
```text
aws-shell-project/
├── aws_info.sh
└── README.md
