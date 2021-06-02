
# Modulo - DDoS Protection Plans
[![Avanade](https://img.shields.io/badge/create%20by-Avanade-orange)](https://www.avanade.com/pt-br/about-avanade) [![HCL](https://img.shields.io/badge/language-HCL-blueviolet)](https://www.terraform.io/)
[![Azure](https://img.shields.io/badge/provider-Azure-blue)](https://registry.terraform.io/providers/hashicorp/azurerm/latest)

Modulo desenvolvido para facilitar a criação de DDoS Protection Plans

## Compatibilidade de Versão

| Versão do Modulo | Versão Terraform | Versão AzureRM |
|----------------|-------------------| --------------- |
| >= 1.x.x       | 0.14.x            | >= 2.46         |

## Especificando versão

Para evitar que seu código receba atualizações automáticas do modulo, é preciso informar na chave `source` do bloco do module a versão desejada, utilizando o parametro `?ref=***` no final da url. conforme pode ser visto no exemplo abaixo.

## Exemplo de uso


```hcl
module "exemplo-1" {
  source   = "git::https://github.com/mgsj2006/azurerm-module-ddos-plan.git?ref=v0.1.0"
  name     = "exemplo-1"
  location = "eastus"
  rg_name  = "resource_group_name"
  tags     = {
    area        = "infraestructure"
  }
}
output "vnet_ids" {
  value = module.exemplo-1.vnet_ids
}
```

## Entrada de Valores

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | nome dado ao recurso | `string` | n/a | yes |
| rg_name | nome do resource group onde os recursos serão alocados | `string` | n/a | yes |
| tags | Tags adicionais | `map(string)` | `{}` | No |
| location | Região do Azure | `string` | n/a | yes |


## Saída de Valores

| Name | Description |
|------|-------------|
| id | ID gerada após provisionamento do recurso |
| vnet_id | ID das vnet's ao qual o recuso está associado. |

## Documentação de Referência

Terraform DDoS Protection Plans: [https://www.terraform.io/providers/azurerm/latest/docs/resources/network_ddos_protection_plan](https://www.terraform.io/providers/azurerm/latest/docs/resources/network_ddos_protection_plan)
