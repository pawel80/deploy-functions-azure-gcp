# Azure, GCP, on-prem deployment
Terraform, build and deploy Function type of service in Azure, GCP and on-prem infra.  
Each deployment is in a separate workflow (.yaml) file.  
Each workflow runs independent from each other.  
All jobs in the workflow start in pararel (unless stated different `needs:`)  

Github runners:
- hosted for Azure and GCP deployments  
- self-hosted for on-prem deployment  

Authentication methods:
- Azure: service principal with secrets  
- GCP: service account key JSON  
- on-prem: TODO

Terraform state will be kept in Terraform Cloud (instead of Azure or GCP storage).  

https://tf-dev-func-app.azurewebsites.net/api/py_https?name=<your_name>
https://tf-dev-func-app.azurewebsites.net/api/py_https2
