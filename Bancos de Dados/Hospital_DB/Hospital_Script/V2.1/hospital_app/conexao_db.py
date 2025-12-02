import mysql.connector
from mysql.connector import Error

HOST = "localhost" 
user = "root" 
password = ""
database = "hospital_db"
PORT = 3306

def conectar_banco():
    conexao = None
    try:
        conexao = mysql.connector.connect(
            host=HOST,
            database=database,
            user=user,
            password=password,
            port=PORT
        )
        if conexao.is_connected():
            return conexao
    except Error as e:
        print(f"❌ Erro ao conectar ao MySQL: {e}")
        return None

def executar_consulta(conexao, consulta):
    """Executa uma consulta SELECT e retorna os resultados."""
    cursor = conexao.cursor()
    try:
        cursor.execute(consulta)
        resultados = cursor.fetchall()
        return resultados
    except Error as e:
        print(f"❌ Erro ao executar a consulta: {e}")
        return []
    finally:
        cursor.close()

if __name__ == "__main__":
    conn = conectar_banco()
    
    if conn:
        print("✅ Conexão bem-sucedida com o banco de dados!")
        
        # -----------------------------------------------------
        # 🎯 Comando SQL que queremos executar:
        sql_pacientes = "SELECT id_paciente, nome, cpf FROM Paciente"
        
        # Executa e armazena os resultados
        pacientes = executar_consulta(conn, sql_pacientes)
        
        # -----------------------------------------------------
        
        if pacientes:
            print("\n--- LISTA DE PACIENTES (via Python) ---")
            for paciente in pacientes:
                # Imprime os resultados no terminal
                print(f"ID: {paciente[0]} | Nome: {paciente[1]} | CPF: {paciente[2]}")
            print("--------------------------------------")
        else:
            print("Nenhum paciente encontrado.")

        conn.close()
        print("Conexão com o banco de dados fechada.")