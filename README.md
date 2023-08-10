# Desafio do Curso Linux do Zero - Shell Script de Criação de Estrutura de Usuários, Diretórios e Permissões

Este repositório contém um desafio proposto pela plataforma DIO (Digital Innovation One) como parte do Curso Linux do Zero. O objetivo deste desafio é criar um shell script que automatize a criação de uma estrutura de diretórios, grupos e usuários, bem como a atribuição de permissões adequadas.

## Requisitos

Antes de executar o script, certifique-se de que você está executando-o como root, uma vez que ele requer privilégios de administrador para realizar operações de criação de diretórios, grupos e usuários, além de atribuir permissões.

## Instruções

1. Faça o download do script para o seu sistema Linux.
2. Abra o terminal e navegue até o diretório onde o script foi baixado.
3. Dê permissão de execução ao script com o comando: `chmod +x iac_linux.sh`
4. Execute o script como root: `sudo ./iac_linux.sh`

## O que o script faz?

Este script automatiza o processo de criação de uma estrutura de diretórios, grupos e usuários, além de definir as permissões apropriadas. As etapas executadas pelo script incluem:

1. Verificação de privilégios: O script verifica se está sendo executado como root antes de prosseguir.

2. Criação de pastas: O script cria quatro diretórios - `/publico`, `/adm`, `/ven` e `/sec`.

3. Criação de grupos: Os grupos GRP_ADM, GRP_VEN e GRP_SEC são criados.

4. Criação de usuários: Vários usuários são criados e associados aos grupos apropriados. Senhas criptografadas são definidas para esses usuários.

5. Definição de permissões: O script atribui permissões específicas aos diretórios recém-criados, incluindo proprietários e grupos proprietários.

6. Conclusão: O script exibe a mensagem "Finalizado!" para indicar que todas as operações foram concluídas com sucesso.

## Observação

Lembre-se de que este é um desafio de aprendizado e, ao executar o script, você estará praticando suas habilidades de scripting e administração de sistemas Linux. Certifique-se de entender o que cada etapa do script está fazendo antes de executá-lo.

