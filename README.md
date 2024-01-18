# Repositório para Deploy do Sorry Cypress com Helm Charts

Este repositório contém as configurações necessárias para realizar o deploy da ferramenta Sorry Cypress de duas maneiras distintas: uma utilizando **Terraform** e a outra através de uma aplicação do **ArgoCD**.

## Estrutura do Repositório

- `terraform/`: Contém os arquivos de configuração do Terraform para implantar e configurar o Sorry Cypress em um cluster Kubernetes.
- `argocd/`: Inclui um arquivo de configuração de um Application para implantar o Sorry Cypress usando o  ArgoCD e uma abordagem declarativa de GitOps.
- `Docker/`: Inclui um compose para subir a solução completa Conteinerizada, para testes. 

### Referências:

##### Sorry Cypress
> Documentação oficial: https://docs.sorry-cypress.dev
> Charts: https://github.com/sorry-cypress/charts/blob/main/charts/sorry-cypress/README.md

##### ArgoCD

> ArgoCD Helm Guide: https://argo-cd.readthedocs.io/en/stable/user-guide/helm/
> helm.parameters: https://kubebyexample.com/learning-paths/argo-cd/argo-cd-working-helm

##### Terraform
> Helm Provider: https://registry.terraform.io/providers/hashicorp/helm/latest/docs

##### Como rodar as automações apontadas para o Sorry Cypress:

> Documentação oficial Sorry Cypress: https://docs.sorry-cypress.dev/integrating-cypress/integration-options