DROP TABLE IF EXISTS users;
CREATE TABLE users (
  u_user_id INTEGER PRIMARY KEY ,
	u_first_name VARCHAR(255) NOT NULL,
	u_last_name VARCHAR(255) NOT NULL,
  u_telefono VARCHAR(9)
);



DROP TABLE IF EXISTS libro;
CREATE TABLE libro (
  l_libro_id INTEGER PRIMARY KEY,
	l_titulo VARCHAR(255) NOT NULL,
	l_autor VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS favorito;
CREATE TABLE favorito (
    user_id INT NOT NULL references users(u_user_id),
    libro_id INT NOT NULL references libro(l_libro_id)

);
