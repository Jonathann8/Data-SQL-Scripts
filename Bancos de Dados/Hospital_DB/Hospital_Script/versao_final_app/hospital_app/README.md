### 🗓️ Histórico de Atualizações (Dev Log)

# 🏥 Sistema de Gestão Hospitalar Aplicação V2.0 (HIS) - Aplicação Web (Atualização 04/12/2025 - 09:07)

Este repositório contém o **Sistema de Informação Hospitalar (HIS)**, a aplicação web desenvolvida em Python/Flask que interage com o Banco de Dados `hospital_db`.

---

## 🚀 Status da Fase Atual: Expansão de Funcionalidades e Arquitetura

A fase atual focou em expandir a interface do usuário, criando novas páginas para visualizar dados complexos do banco de dados, confirmando a arquitetura em três camadas (Frontend, Backend, Database).

### 1. ⚙️ Funcionalidades Implementadas

| Rota | Consulta SQL | Propósito | Status |
| :--- | :--- | :--- | :--- |
| **`/`** | `SELECT` Simples | Exibe a lista completa de **Pacientes** na página inicial. | ✅ **Pronto** |
| **`/medicos`** | `JOIN` Avançado | Gera um relatório que combina dados da tabela **Médico** com a tabela **Departamento**. | ✅ **Pronto** |

### 2. 🐍 Estrutura e Implementação da Rota

As duas funcionalidades (`/` e `/medicos`) estão corretamente implementadas no arquivo **`app.py`**, obedecendo a arquitetura do Flask:

* **Rotas no Nível Principal:** As funções `listar_pacientes()` e `listar_medicos()` foram definidas no **nível principal do script** (antes do `if __name__ == '__main__':`), garantindo que o Flask as reconheça como rotas válidas.
* **Lógica SQL:** A função `listar_medicos()` utiliza a instrução **`JOIN`** para criar um relatório que exige dados de múltiplas tabelas.

---

## 🛠️ Tecnologias e Setup

### 🔑 Comandos Essenciais (Rotina Diária)

Para iniciar o sistema em cada sessão:

1.  Ligue o módulo **MySQL** no Painel de Controle do XAMPP.
2.  No terminal, ative o ambiente virtual para carregar as bibliotecas:
    ```bash
    .\.venv\Scripts\activate
    ```
3.  Execute a aplicação:
    ```bash
    python app.py
    ```

### 🧭 Acesso às Rotas

* **Lista de Pacientes (Home):** `http://127.0.0.1:5000/`
* **Relatório de Médicos:** `http://127.0.0.1:5000/medicos`

---

## ⏭️ Próximos Passos

1.  **Refatoração do Frontend:** Organizar o código movendo o HTML (que está embutido nas variáveis Python) para a pasta padrão **`templates`** e utilizando a função `render_template` do Flask.