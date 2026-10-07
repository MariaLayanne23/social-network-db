# Social Network Database

Projeto prático de **modelagem e criação de banco de dados para uma rede social**, desenvolvido com o objetivo de aplicar conceitos de banco de dados relacionais, modelagem ER, criação de tabelas, relacionamentos e manipulação de dados utilizando SQL.

O projeto contempla o **Diagrama Entidade-Relacionamento (ER)** e um script SQL contendo a estrutura e os dados iniciais do banco.

---

## 📌 Objetivo

O objetivo deste projeto é desenvolver uma estrutura de banco de dados capaz de armazenar e organizar informações relacionadas a uma rede social, permitindo o gerenciamento de:

- Usuários;
- Perfis;
- Publicações;
- Curtidas;
- Comentários;
- Amizades/seguidores;
- Relacionamentos entre usuários;
- Interações realizadas na plataforma.

O projeto também busca demonstrar, na prática, a aplicação de conceitos de **modelagem de dados e SQL**.

---

## 🗂️ Estrutura do Repositório

```bash
social-network-db/
├── docs/
│   └── diagrama.png
│
├── sql/
│   └── social_network.sql
│
└── README.md
```

### 📁 `docs/`

Contém os arquivos relacionados à documentação e à modelagem do banco.

- `diagrama.png` — Diagrama Entidade-Relacionamento (ER) utilizado como representação visual da estrutura do banco.

### 📁 `sql/`

Contém os scripts SQL utilizados para criação e alimentação do banco de dados.

- `social_network.sql` — Script responsável pela criação das tabelas, relacionamentos e inserção dos dados iniciais.

### 📄 `README.md`

Arquivo de documentação do projeto, contendo informações sobre sua finalidade, estrutura, instalação e utilização.

---

## 🧩 Modelagem do Banco

O banco foi projetado utilizando o modelo relacional, buscando representar as principais entidades e interações presentes em uma rede social.

Entre as principais entidades do projeto estão:

| Entidade | Descrição |
|---|---|
| `usuarios` | Armazena os dados dos usuários cadastrados |
| `publicacoes` | Armazena as publicações realizadas pelos usuários |
| `comentarios` | Registra os comentários feitos nas publicações |
| `curtidas` | Registra as curtidas realizadas pelos usuários |
| `amizades` | Representa os relacionamentos entre usuários |

> Os nomes das entidades podem variar de acordo com a implementação presente no script SQL.

---

## 🔗 Relacionamentos

O banco utiliza relacionamentos entre as entidades para representar as interações da rede social.

Exemplos:

- Um usuário pode realizar várias publicações.
- Uma publicação pertence a um usuário.
- Uma publicação pode receber vários comentários.
- Um usuário pode realizar vários comentários.
- Uma publicação pode receber várias curtidas.
- Um usuário pode curtir várias publicações.
- Usuários podem possuir relacionamentos entre si.

Esses relacionamentos são implementados por meio de **chaves primárias (PK)** e **chaves estrangeiras (FK)**.

---

## 🛠️ Tecnologias Utilizadas

- **SQL**
- **Banco de dados relacional**
- **DDL (Data Definition Language)**
- **DML (Data Manipulation Language)**
- **Modelo Entidade-Relacionamento (ER)**

O script pode ser adaptado para diferentes sistemas gerenciadores de banco de dados (SGBDs), como:

- MySQL
- MariaDB
- PostgreSQL

> Algumas instruções SQL podem precisar de pequenos ajustes dependendo do SGBD utilizado.

---

## ⚙️ Como Executar

### 1. Clone o repositório

```bash
git clone https://github.com/SEU-USUARIO/social-network-db.git
```

### 2. Acesse a pasta do projeto

```bash
cd social-network-db
```

### 3. Execute o script SQL

Abra o arquivo:

```bash
sql/social_network.sql
```

em seu SGBD ou ferramenta de gerenciamento SQL.

Por exemplo, no MySQL:

```bash
mysql -u root -p < sql/social_network.sql
```

Depois, informe a senha do usuário do banco quando solicitado.

---

## 🗄️ Estrutura do Banco

O script SQL é responsável por realizar as operações necessárias para disponibilizar o banco de dados, como:

```sql
CREATE DATABASE social_network;
```

Criação das tabelas:

```sql
CREATE TABLE ...
```

Definição das chaves primárias:

```sql
PRIMARY KEY (...)
```

Definição das chaves estrangeiras:

```sql
FOREIGN KEY (...)
REFERENCES ...
```

E inserção de dados para testes:

```sql
INSERT INTO ...
```

---

## 📊 Diagrama Entidade-Relacionamento

O projeto possui um diagrama ER que representa visualmente as entidades, atributos e relacionamentos do banco.

![Diagrama Entidade-Relacionamento](docs/diagrama.png)

O diagrama facilita a compreensão da estrutura do banco antes da implementação física das tabelas.

---

## 🧪 Dados de Teste

O arquivo `social_network.sql` também pode conter dados fictícios para permitir a realização de testes e consultas.

Esses dados podem ser utilizados para verificar:

- Cadastro de usuários;
- Criação de publicações;
- Comentários;
- Curtidas;
- Relacionamentos entre usuários;
- Consultas envolvendo múltiplas tabelas.

---

## 🔎 Exemplos de Consultas

### Listar usuários

```sql
SELECT *
FROM usuarios;
```

### Listar publicações

```sql
SELECT *
FROM publicacoes;
```

### Buscar publicações de um usuário

```sql
SELECT *
FROM publicacoes
WHERE usuario_id = 1;
```

### Consultar comentários

```sql
SELECT *
FROM comentarios;
```

### Consultar curtidas

```sql
SELECT *
FROM curtidas;
```

> As consultas podem ser adaptadas conforme os nomes das tabelas e colunas definidos no script.

---

## 🎯 Conceitos Aplicados

Durante o desenvolvimento do projeto foram aplicados conceitos importantes de banco de dados, incluindo:

- Modelagem Entidade-Relacionamento;
- Modelo relacional;
- Chaves primárias;
- Chaves estrangeiras;
- Relacionamentos entre tabelas;
- Integridade referencial;
- Criação de tabelas;
- Inserção de dados;
- Consultas SQL;
- Organização e documentação de projetos.

---

## 🚀 Possíveis Melhorias Futuras

O projeto pode ser expandido futuramente com novas funcionalidades, como:

- Sistema de mensagens privadas;
- Stories;
- Notificações;
- Compartilhamento de publicações;
- Sistema de seguidores;
- Grupos e comunidades;
- Hashtags;
- Upload e gerenciamento de imagens;
- Sistema de autenticação;
- Controle de privacidade das publicações;
- Denúncias e moderação de conteúdo;
- Sistema de recomendações de usuários.

---

## 📚 Finalidade Acadêmica

Este projeto foi desenvolvido como atividade prática para aplicação dos conhecimentos relacionados à disciplina de **Banco de Dados**, envolvendo desde a etapa de modelagem até a implementação da estrutura utilizando SQL.

A proposta é demonstrar como uma aplicação semelhante a uma rede social pode ter seus dados organizados de forma estruturada, consistente e relacionada.

---

## 👨‍💻 Autor

**Gustavo França**

Projeto desenvolvido para fins acadêmicos e de aprendizado.

---

## 📄 Licença

Este projeto foi desenvolvido para fins educacionais.

Sinta-se livre para estudar, modificar e utilizar a estrutura como referência em seus próprios projetos.
