CREATE DATABASE IF NOT EXISTS tienda2;

USE tienda2;

CREATE TABLE IF NOT EXISTS t_usuarios(
    id_usuarios      int (11)        auto_increment NOT NUll,
    nombre           varchar (100)                  NOT NUll,
    apellido         varchar (100)                  NOT NUll,
    email            varchar (200)                  NOT NUll,
    password         varchar (200)                  NOT NUll,
    rol              varchar(20)                    NOT NUll,
    imagen    varchar(200),
    CONSTRAINT pk_usuario   PRIMARY KEY (id_usuarios),
    CONSTRAINT uq_email   UNIQUE (email)
)ENGINE=InnoDb;

INSERT INTO t_usuarios   VALUE(NULL,'yeny','silva','yenysilvacamargo1020@gmail.com','123456789','admin','imagen');

