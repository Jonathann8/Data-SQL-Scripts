# 🏥 Sistema de Gestão Hospitalar (HIS) - Aplicação Web

Este repositório contém o **Sistema de Informação Hospitalar (HIS)**, que é a aplicação web desenvolvida em Python/Flask para interagir com o Banco de Dados `hospital_db`.

O projeto evoluiu da **modelagem pura (SQL)** para uma **solução funcional**, permitindo que os dados sejam visualizados e gerenciados através de uma interface de usuário.

---

## 🎯 Fase Atual: Dando Vida ao Banco de Dados

A fase atual foca em construir a **ponte de comunicação** e o **Frontend** para o modelo de dados criado.

### 1. 🌉 Arquitetura (3 Camadas)

A aplicação segue a arquitetura de três camadas, essencial em ADS, para garantir segurança e organização 

[Image of 3-tier architecture diagram showing frontend, application server, and database]
:

* **Camada de Dados (Database):** MySQL (`hospital_db`).
* **Camada de Aplicação (Backend):** Python/Flask, que processa a lógica de negócios e se conecta ao MySQL.
* **Camada de Apresentação (Frontend):** HTML simples, exibido no navegador para o usuário.

### 2. Status da Implementação

| Componente | Status | Detalhes |
| :--- | :--- | :--- |
| **Conexão** | ✅ **Sucesso!** | O código Python estabeleceu conexão persistente com o MySQL usando o conector. |
| **Extração de Dados** | ✅ **Funcional** | O código Python executa comandos `SELECT` (SQL) e recupera dados, como a lista de pacientes. |
| **Primeira Rota Web** | ✅ **Funcional** | A rota principal (`/`) foi implementada em Flask e exibe a lista de pacientes em uma tabela HTML no navegador. |

---

## ⚙️ Tecnologias e Setup

| Tecnologia | Finalidade no Projeto |
| :--- | :--- |
| **MySQL / XAMPP** | Servidor e banco de dados relacional. |
| **Python** | Linguagem de programação da aplicação. |
| **Flask** | Micro-framework para criar o servidor web e as rotas. |
| **mysql-connector-python** | Driver para conectar Python ao MySQL. |

### 🛠️ Como Rodar a Aplicação

1.  Certifique-se de que o módulo **MySQL** do XAMPP esteja **ATIVO (Running)**.
2.  Instale as dependências Python: `pip install Flask mysql-connector-python`
3.  Execute o arquivo principal: `python app.py`
4.  Acesse o endereço exibido no terminal (geralmente `http://127.0.0.1:5000/`) no seu navegador.

---

## ⏭️ Próximos Passos (Próxima Sessão)

1.  Criar a **Rota `/medicos`** que utiliza comandos `JOIN` para exibir o nome do médico, especialidade e o departamento.
2.  Organizar o Frontend, movendo o código HTML para a pasta padrão **`templates`** do Flask.