
-- BANCO DE DADOS: REDE SOCIAL


-- 1. Criar o banco de dados
CREATE DATABASE social_network;

-- Depois de criar o banco, conecte-se a ele
-- No PostgreSQL/psql:
-- \c social_network



-- 2. TABELA DE USUÁRIOS


CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- 3. TABELA DE POSTAGENS


CREATE TABLE posts (
    id INTEGER PRIMARY KEY,
    user_id INTEGER NOT NULL,
    title VARCHAR(150),
    body TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_posts_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
);



-- 4. TABELA DE AMIZADES


CREATE TABLE friends (
    user_id INTEGER NOT NULL,
    friend_id INTEGER NOT NULL,
    status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (user_id, friend_id),

    CONSTRAINT fk_friends_user
        FOREIGN KEY (user_id)
        REFERENCES users(id),

    CONSTRAINT fk_friends_friend
        FOREIGN KEY (friend_id)
        REFERENCES users(id),

    CONSTRAINT check_different_users
        CHECK (user_id <> friend_id)
);

