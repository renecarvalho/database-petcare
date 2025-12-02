#  **PetCare Database**

## Sobre o Projeto

Este repositório contém a modelagem e implementação de um **banco de dados relacional** para um sistema de agendamento de serviços para pets.
Aqui você encontrará:

* Estrutura do banco (**DDL**)
* Inserts para popular o sistema (**DML**)
* Consultas SQL de exemplo
* Comandos de atualização (**UPDATE**) e remoção (**DELETE**)
* Scripts separados para organização e fácil execução

O banco foi modelado utilizando conceitos de **Minimundo, DER, entidades, atributos, cardinalidades, dados vs. informação** e outros tópicos da disciplina de **Modelagem de Banco de Dados** da Unifran.

---

## Estrutura de Arquivos

```
/petcare-database
│
├── README.md
├── create_database_and_tables.sql
├── inserts.sql
├── selects.sql
├── updates_and_deletes.sql
```

---

## Pré-requisitos

Para executar os scripts, você precisa de:

* **MySQL** instalado (8.x recomendado)
* Um cliente SQL, como:

  * MySQL Workbench
  * DBeaver
  * TablePlus
  * Terminal (CLI do MySQL)

---

## Como Executar o Projeto?

### **1️⃣ Criar o Banco de Dados**

Execute o arquivo:

```
create_database_and_tables.sql
```

Este script irá:

* Criar o banco **petcare**
* Selecioná-lo com `USE petcare;`
* Criar as tabelas

* Cliente
* Pet
* Servico
* Funcionario
* Agendamento

Incluindo **PK**, **FK** e restrições.

---

### **3️⃣ Popular o Banco com Dados de Teste**

Para inserir dados reais de teste:

```
inserts.sql
```

Esse arquivo contém ao menos **5 inserts por tabela**, com dados coerentes entre si.

---

### **4️⃣ Executar Consultas (SELECTs)**

Para testar relacionamentos e manipular os dados:

```
selects.sql
```

Esse arquivo contém:

* SELECT com WHERE
* SELECT com JOIN
* SELECT com ORDER BY
* SELECT com LIMIT
* SELECT combinando vários comandos

---

### **5️⃣ Atualizar e Deletar Registros**

Se quiser testar comandos de alteração e deleção:

```
updates_and_deletes.sql
```

Esse script inclui **3 comandos UPDATE** com condições variadas e **3 comandos DELETE**, todos com WHERE para evitar exclusões acidentais.

---

## Observações Importantes

* Execute os arquivos **na ordem correta** para evitar erros.
* Certifique-se que o banco `petcare` foi criado antes de criar as tabelas.
* As foreign keys exigem que clientes, pets e serviços existam antes dos agendamentos.
* Utilize o botão “run script” do Workbench ou cole os comandos no terminal MySQL.

---

Se quiser melhorar o banco, adicionar triggers, procedures, views ou exportar o DER visual, fique à vontade para contribuir.

---
