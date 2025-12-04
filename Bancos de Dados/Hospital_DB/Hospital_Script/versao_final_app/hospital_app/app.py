from flask import Flask, render_template_string
from conexao_db import conectar_banco, executar_consulta

app = Flask(__name__)

# ==========================================================
# 1. ROTA PRINCIPAL: LISTA DE PACIENTES (ATUALIZADA com LINK)
# ==========================================================
@app.route('/')
def listar_pacientes():
    # 1. Tenta conectar ao banco de dados
    conn = conectar_banco()
    
    if conn is None:
        return "Erro ao conectar ao banco de dados.", 500

    # 2. Define a consulta SQL
    sql = "SELECT id_paciente, nome, cpf, data_nascimento FROM Paciente ORDER BY nome"
    
    # 3. Executa a consulta e armazena os resultados
    pacientes = executar_consulta(conn, sql)
    
    # 4. Fecha a conexão para liberar recursos
    conn.close()

    # 5. Prepara a exibição HTML
    html_content = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>Sistema Hospitalar - Pacientes</title>
        <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            table { width: 100%; border-collapse: collapse; }
            th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
            th { background-color: #f2f2f2; }
            .nav-link { margin-bottom: 20px; display: block; }
        </style>
    </head>
    <body>
        <h1>🏥 Lista de Pacientes (Hospital SUS)</h1>
        <div class="nav-link"><a href="/medicos">→ Ir para Relatório de Médicos</a></div>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Nascimento</th>
                </tr>
            </thead>
            <tbody>
                {% for paciente in pacientes %}
                <tr>
                    <td>{{ paciente[0] }}</td>
                    <td>{{ paciente[1] }}</td>
                    <td>{{ paciente[2] }}</td>
                    <td>{{ paciente[3] }}</td>
                </tr>
                {% endfor %}
            </tbody>
        </table>
    </body>
    </html>
    """
    return render_template_string(html_content, pacientes=pacientes)


# ==========================================================
# 2. NOVA ROTA: RELATÓRIO DE MÉDICOS (INSERIDA CORRETAMENTE)
# ==========================================================
@app.route('/medicos')
def listar_medicos():
    conn = conectar_banco()
    
    if conn is None:
        return "Erro ao conectar ao banco de dados para listar médicos.", 500

    # 🎯 CONSULTA SQL AVANÇADA COM JOIN
    sql = """
    SELECT
        M.nome,
        M.especialidade,
        D.nome
    FROM
        Medico M
    JOIN
        Departamento D ON M.id_departamento = D.id_departamento
    ORDER BY
        D.nome, M.nome
    """
    
    medicos = executar_consulta(conn, sql)
    conn.close()

    # Prepara a exibição HTML
    html_content = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>Sistema Hospitalar - Médicos</title>
        <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            table { width: 80%; border-collapse: collapse; margin-top: 20px;}
            th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
            th { background-color: #e0f7fa; }
            h1 { color: #00796b; }
            .nav-link { margin-bottom: 20px; display: block; }
        </style>
    </head>
    <body>
        <div class="nav-link"><a href="/">← Voltar para Pacientes</a></div>
        <h1>👨‍⚕️ Lista de Médicos por Departamento</h1>
        <table>
            <thead>
                <tr>
                    <th>Nome do Médico</th>
                    <th>Especialidade</th>
                    <th>Departamento</th>
                </tr>
            </thead>
            <tbody>
                {% for medico in medicos %}
                <tr>
                    <td>{{ medico[0] }}</td>
                    <td>{{ medico[1] }}</td>
                    <td>{{ medico[2] }}</td>
                </tr>
                {% endfor %}
            </tbody>
        </table>
    </body>
    </html>
    """
    return render_template_string(html_content, medicos=medicos)


# ==========================================================
# 3. BLOCO DE INICIALIZAÇÃO (JÁ ESTAVA CORRETO)
# ==========================================================
if __name__ == '__main__':
    # Inicia o servidor Flask.
    print("Servidor Flask rodando em: http://127.0.0.1:5000/")
    app.run(debug=True)