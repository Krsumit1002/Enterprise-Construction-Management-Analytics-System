# Enterprise Construction Management Analytics

An end-to-end data analytics project designed to analyze construction business operations, project performance, procurement activity, vendor spending, and financial transactions using SQL, Google BigQuery, and Looker Studio.

---

## 📌 Project Overview

The Enterprise Construction Management Analytics project provides a centralized analytical view of construction operations.

The project analyzes multiple business areas including:

- Client management
- Project performance
- Project budgets
- Procurement and material purchases
- Vendor performance
- Invoice management
- Payment activity
- Financial performance

The goal is to transform raw operational data into meaningful business insights that can help management monitor projects, control costs, evaluate vendors, and understand financial performance.

---

## 🎯 Business Objectives

The main objectives of this project are to:

- Analyze the overall client and project portfolio.
- Monitor project status and completion performance.
- Analyze project budgets across different project types.
- Evaluate procurement spending and vendor performance.
- Identify major vendors based on procurement expenditure.
- Analyze invoices and payment activity.
- Monitor invoice status and financial performance.
- Build an interactive executive dashboard for management reporting.
- Demonstrate an end-to-end data analyst workflow using SQL and BI tools.

---

## 🗂️ Dataset

The project uses a relational construction-management dataset consisting of multiple business tables.

### Main Tables

| Table | Description |
|---|---|
| `clients` | Client information and client categories |
| `projects` | Project details, budgets, status, dates, and completion information |
| `employees` | Employee and workforce information |
| `materials` | Construction material information |
| `vendors` | Vendor information |
| `purchases` | Procurement and purchase transactions |
| `invoices` | Invoice records and invoice amounts |
| `payments` | Payment transactions against invoices |

---
# 📊 Dashboard

The project includes an interactive executive dashboard built using Looker Studio.

The dashboard provides a consolidated view of construction operations, project performance, procurement activity, vendor spending, and financial performance.

[Dashboard Preview](https://datastudio.google.com/reporting/95d7929a-27bd-4f15-a184-d799e806f208)

## 🖼️ Dashboard Preview

<img width="1200" height="698" alt="image" src="https://github.com/user-attachments/assets/fe1fe78c-dd9e-480c-832e-7043f65d0313" />

## 🔗 Data Model

The major relationships between the tables are based on common business identifiers.

```text
Clients
   │
   └────────────── Projects
                       │
                       ├──────── Employees
                       │
                       └──────── Purchases
                                      │
                                      ├──────── Vendors
                                      │
                                      └──────── Materials

Invoices
   │
   └──────── Payments
