<p align="center">
  <a href="https://skillicons.dev">
    <img src="https://skillicons.dev/icons?i=aws,github,terraform,vscode" />
  </a>
</p>


🏥 J-Tele-Doctor – Global AWS Architecture (Stage 1)
Project Overview

Tokyo Midtown Medical Center (TMMC) is expanding its services globally by launching J-Tele-Doctor, a telemedicine platform designed to serve Japanese customers traveling abroad while ensuring strict data residency and security requirements.

This project represents Stage 1 of the architecture and focuses on global application availability, regional isolation, and secure data transfer to Japan, while ensuring no personal or medical data is stored outside Japan.

🌍 Regions & Global Footprint

The application is deployed using one VPC per region, with a minimum of two Availability Zones per region, to ensure high availability and fault tolerance.

Primary Region (Data Residency)

Tokyo

Region: ap-northeast-1

Purpose:

Primary application hosting

Centralized syslog storage (Japan-only)

Future database & SIEM deployment (Stage 2)

International Access Regions (Stateless App Tier Only)

Used to serve traveling customers with low latency while enforcing data residency controls.

Location	AWS Region
New York	us-east-1
London	eu-west-2
São Paulo	sa-east-1
Australia	ap-southeast-2
Hong Kong	ap-east-1
California	us-west-1

📌 Important Design Rule

No personal or medical data is stored outside Japan

All international regions run stateless application tiers only

🏗️ Network Architecture (Per Region)

Each region contains:

1 VPC (/16 CIDR)

2 Availability Zones

Public Subnets

Application load-balanced entry point

Only port 80 open to the public

Private Subnets

Auto Scaling Group instances

Syslog forwarding components

No direct internet access for logging resources

Each region includes:

Auto Scaling Group across 2 AZs

Minimum 1 EC2 instance for test deployment

Security group allowing only port 80 inbound

🔐 Security & Compliance Controls
Data Residency

Syslog data is stored in Japan only

No databases or personal data deployed outside ap-northeast-1

No VPN-based data transfer is used

Logging & Audit (Stage 1)

Application logs are forwarded securely to Japan

Syslog components are placed in private subnets only

Demonstrates cross-region data transfer without violating data locality rules

Network Security

Public access restricted to HTTP (port 80)

Private subnets used for logging and internal components

Clear separation between application tier and security zone

🌐 Why Terraform?

Terraform was chosen as the Infrastructure as Code (IaC) tool for the following reasons:

Consistency across regions
Identical architecture patterns can be deployed globally with region-specific variables.

Compliance & Auditability
Infrastructure changes are version-controlled and reviewable.

Scalability
Adding a new country or region requires configuration, not redesign.

Disaster Recovery Readiness
Infrastructure can be recreated reliably in the event of regional failure.

Clear Separation of Concerns
Networking, compute, and security components are modularized.

Terraform enables TMMC to treat infrastructure as policy-enforced architecture, not manual configuration.

🚀 Safe Deployment via CI/CD

Infrastructure is deployed using a Terraform-based CI/CD pipeline (see terraform-devsecops-ci-cd repository).

Deployment Flow

Pull Request (No Changes Applied)

Terraform format & validation

Terraform plan generation

Security scanning (IaC)

Human review required

Merge to Main

Automatic deployment to development environments

No direct production changes

Production Deployment

Manual approval required

Environment-gated execution

Remote Terraform state with locking

Key Safety Controls

No terraform apply on pull requests

Environment isolation per region

Rollback via Git version control

Secrets managed via CI/CD platform (not in code)

📌 This ensures secure, auditable, and repeatable infrastructure changes — a critical requirement for healthcare systems.

🧠 Architectural Intent

This architecture was designed to:

Serve Japanese customers globally with low latency

Enforce strict data residency laws

Prepare for future pandemics and demand spikes

Enable controlled, automated infrastructure delivery

Stage 2 will introduce:

Centralized SIEM

Databases in Japan only

Enhanced monitoring and alerting

📎 Related Projects

Terraform DevSecOps CI/CD Platform
→ terraform-devsecops-ci-cd

## Architecture Overview

![J-Tele-Doctor Global AWS Architecture](j-tele-doctor-global-aws-architecture.png)

