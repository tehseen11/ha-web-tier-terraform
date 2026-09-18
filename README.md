# 🚀 Highly Available Web Tier on AWS with Terraform

> A production-style AWS infrastructure project built with **Terraform**, demonstrating a highly available web application across multiple Availability Zones using **Application Load Balancer, Auto Scaling Group, EC2, VPC, and Nginx**.

---

## 🏗️ Architecture

```text
                         🌍 Internet
                              |
                              v
                  ┌──────────────────────┐
                  │  Application Load    │
                  │      Balancer        │
                  │       Port 80        │
                  └──────────┬───────────┘
                             |
                   ┌─────────┴─────────┐
                   |                   |
                   v                   v
          ┌────────────────┐   ┌────────────────┐
          │   EC2 Instance │   │   EC2 Instance │
          │   us-east-1a   │   │   us-east-1b   │
          │     Nginx      │   │     Nginx      │
          └────────────────┘   └────────────────┘
                   ^                   ^
                   |                   |
                   └─────────┬─────────┘
                             |
                  ┌──────────────────────┐
                  │  Auto Scaling Group  │
                  │                      │
                  │  Min: 2              │
                  │  Desired: 2          │
                  │  Max: 4              │
                  └──────────────────────┘

                 AWS VPC: 10.0.0.0/16
