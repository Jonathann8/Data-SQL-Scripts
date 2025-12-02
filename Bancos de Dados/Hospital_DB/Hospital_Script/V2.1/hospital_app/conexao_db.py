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
            print("✅ Conexão bem-sucedida com o banco de dados!")
            return conexao

    except Error as e:
        print(f"❌ Erro ao conectar ao MySQL: {e}")
        return None

if __name__ == "__main__":
    conn = conectar_banco()
    
    if conn:
        conn.close()
        print("Conexão com o banco de dados fechada.")