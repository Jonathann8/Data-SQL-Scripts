import mysql.connector
from mysql.connector import Error

HOST = 'localhost'
USER = 'your_username'
PASSWORD = ''   
DATABASE = 'hospital_db'
PORT = 3306

def conectar_banco():
    conexao = None
    try:
        conexao = mysql.connector.connect(
            host=HOST,
            database=DATABASE,
            USER=USER,
            passaword=PASSWORD,
            port=PORT
        )
        if conexao.is_connected():
            print("Conexão bem-sucedida ao banco de dados")
            return conexao

    except Error as e: 
        print(f"Erro ao conectar ao banco de dados: {e}")
        return None
if __name__ == "__main__":
    conectar_banco()

    if conn:
        conn.close()
        print("Conexão encerrada")