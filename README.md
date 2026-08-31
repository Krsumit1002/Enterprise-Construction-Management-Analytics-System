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
