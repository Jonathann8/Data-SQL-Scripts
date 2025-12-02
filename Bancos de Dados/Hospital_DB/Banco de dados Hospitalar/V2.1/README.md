# 🏥 Atualizações do Projeto Banco de Dados Hospitalar V2.1

1. Inserção de Dados Base para Novas Entidades
Departamentos e Exames: Foram inseridos dados iniciais nas tabelas Departamento e Exame (após a remoção do campo preço para adequação ao modelo SUS). Isso estabelece a base para a organização médica e os procedimentos clínicos.

2. Vínculo Medico-Departamento (Atualização)
Atualização de Médicos: Executado o comando UPDATE na tabela Medico para vincular cada médico a um id_departamento específico (ex: Cardiologia, Pediatria). Esta ação completou a Chave Estrangeira (id_departamento), formalizando a estrutura organizacional.

3. Registro de Exames Solicitados
Tabela Exame_Solicitado: Inseridos dados para a tabela Exame_Solicitado, registrando quais exames (ex: ECG, Biópsia) foram pedidos em consultas específicas. Isso testa o relacionamento entre Consulta, Exame e a nova tabela de procedimentos.
