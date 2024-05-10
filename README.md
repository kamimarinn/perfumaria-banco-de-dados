# perfumaria-banco-de-dados

# Banco de Dados da Perfumaria

Este banco de dados foi projetado para uma perfumaria e utiliza triggers para realizar ações automáticas em resposta a operações de insert, update e delete.

## Triggers (Gatilhos)

Os triggers são objetos do banco de dados que são automaticamente acionados em resposta a determinados eventos. Neste banco de dados, foram implementados triggers para as seguintes operações:

- **Inserção (Insert)**: Quando um novo produto é inserido na tabela "produtos", um trigger é acionado para registrar essa operação no histórico do banco de dados.
- **Exclusão (Delete)**: Quando um produto é excluído da tabela "produtos", um trigger é acionado para registrar essa operação no histórico do banco de dados.
- **Atualização (Update)**: Quando um produto é atualizado na tabela "produtos", um trigger é acionado para registrar essa operação no histórico do banco de dados.

Esses triggers foram implementados para garantir a rastreabilidade de todas as operações realizadas no banco de dados da perfumaria.

## Como Utilizar

Para utilizar o banco de dados da perfumaria e aproveitar os benefícios dos triggers implementados, siga estas etapas:

1. **Importar o Banco de Dados**: Importe o arquivo SQL fornecido para criar todas as tabelas e triggers no seu sistema de gerenciamento de banco de dados.
2. **Realizar Operações**: Realize operações de inserção, exclusão e atualização nas tabelas do banco de dados conforme necessário.
3. **Verificar o Histórico**: Verifique o histórico de operações para rastrear todas as mudanças feitas no banco de dados.

## Autor

Este banco de dados da perfumaria foi desenvolvido por Kamila Cavalcante - 2DM / Senai Suiço Brasileiro (Maio/2024)


