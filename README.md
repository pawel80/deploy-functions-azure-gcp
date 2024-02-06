# Azure, GCP, on-prem deployment
Build and deploy Function type of service in Azure, GCP and on-prem infra.  
Each deployment is in a separate workflow file.  
Each workflow works independent from each other.  
All jobs in the workflow start in pararel (unless stated different `needs:`)  

Github runners:  
- hosted for Azure and GCP deployments  
- self-hosted for on-prem deployment  

Azure: service principal with secrets  
GCP: service account key JSON  
On-prem: TODO

Terraform state will be kept in Terraform Cloud (instead of Azure or GCP storage).  



code quote test: `py -3.9 -m venv .venv`
