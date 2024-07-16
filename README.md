# Terraform
Primeiros passos na construção de uma infraestrutura como código.
# Pequena definição
Terraform é uma ferramenta de "Infraestrutura como Código" (IaC) desenvolvida pela HashiCorp. Ela permite que você defina, provisiona e gerencie infraestruturas de TI de maneira automatizada e declarativa.

# O que será feito?
Ao executar o código abaixo, uma instância EC2 será criada na região us-east-1 com as seguintes configurações:
* AMI: ami-01fccab91b456acc2
* Tipo de Instância: t2.micro
* Tags: Name: zero1-terraform
* Grupo de Segurança: sg-0fc318f9d37f2088a - Associado ao ID especificado por SECURITY_GROUP
* Script de Inicialização: Executa userdata.sh para configurar a instância automaticamente
* Perfil IAM: Associado ao perfil zero1-role
