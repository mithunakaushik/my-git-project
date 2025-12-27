




#!/bin/bash

# =================================================
# Project: Learning AWS using Shell Scripting
# Author: Kaushik
#
# Description:
# This script is created for learning purposes.
# It demonstrates how to use AWS CLI commands
# inside a Bash script to explore AWS resources.
# =================================================

echo "==============================================="
echo "   AWS LEARNING PROJECT - SHELL SCRIPTING"
echo "==============================================="
echo ""

# -------------------------------
# AWS Region Information
# -------------------------------
echo "🔹 AWS Region configured on this system:"
aws configure get region
echo ""

# -------------------------------
# S3 Service - List Buckets
# -------------------------------
echo "🔹 Listing available S3 buckets:"
aws s3 ls
echo ""

# -------------------------------
# EC2 Service - List Instances
# -------------------------------
echo "🔹 Listing EC2 Instance IDs:"
aws ec2 describe-instances \
--query 'Reservations[].Instances[].InstanceId' \
--output table
echo ""

# -------------------------------
# EC2 Service - Instance States
# -------------------------------
echo "🔹 EC2 Instance States (running / stopped):"
aws ec2 describe-instances \
--query 'Reservations[].Instances[].State.Name' \
--output table
echo ""

# -------------------------------
# EC2 Service - Availability Zones
# -------------------------------
echo "🔹 Availability Zones in the region:"
aws ec2 describe-availability-zones \
--query 'AvailabilityZones[].ZoneName' \
--output table
echo ""

# -------------------------------
# IAM Service - List Roles
# -------------------------------
echo "🔹 IAM Roles available in this account:"
aws iam list-roles \
--query 'Roles[].RoleName' \
--output table
echo ""

# -------------------------------
# Script Completion
# -------------------------------
echo "==============================================="
echo " ✅ AWS Learning Script Execution Completed"
echo "==============================================="


















