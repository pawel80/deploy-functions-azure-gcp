# deploy-functions-azure-gcp-onprem
Build and deploy Function type of service in Azure, GCP and on-prem infra.  
Each deployment is in a separate workflow file.  
Github runners:
- hosted for Azure and GCP deployments  
- self-hosted for on-prem deployment  

Azure: service principal with secrets  
GCP: service account key JSON  
On-prem: TODO

Terraform state will be kept in Terraform Cloud (instead of Azure or GCP storage).

doc test: `py -3.9 -m venv .venv`
