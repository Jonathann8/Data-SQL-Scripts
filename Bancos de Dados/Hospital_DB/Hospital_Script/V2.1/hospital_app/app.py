from flask import Flask, render_template_string
from conexao_db import conectar_banco, executar_consulta

app = Flask(__name__)

# Rota principal (página inicial)
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

    # 5. Prepara a exibição HTML (usando template string simples por enquanto)
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
        </style>
    </head>
    <body>
        <h1>🏥 Lista de Pacientes (Hospital SUS)</h1>
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
    # Renderiza o HTML, passando a lista de pacientes
    return render_template_string(html_content, pacientes=pacientes)

if __name__ == '__main__':
    # Inicia o servidor Flask. debug=True reinicia o servidor automaticamente ao salvar o código.
    print("Servidor Flask rodando em: http://127.0.0.1:5000/")
    app.run(debug=True)