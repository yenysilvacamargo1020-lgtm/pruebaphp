CREATE DATABASE IF NOT EXISTS tienda14;

USE tienda14;

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

CREATE TABLE if NOT EXISTS t_categorias(
    id_categoria  int(11)   auto_increment NOT NULL,
    nombre_categoria  varchar(100) NOT NULL,
    CONSTRAINT pk_categoria    PRIMARY KEY (id_categoria)
)ENGINE=InnoDb;
INSERT INTO t_categorias VALUE(NULL,'construccion'),(NUll,'electricos'),(NUll,'pinturas'),(NUll,'pisos')

CREATE TABLE IF NOT EXISTS t_productos(
    id_producto        int(11) auto_increment NOT NULL,
    nombre_producto    varchar(100)           NOT NULL,
    descripcion    varchar(200)     NOT NULL,
    fecha      date    NOT NULL,
    stock              int(100)               NOT NUll,
    precio             float(10,2)             NOT NUll,
    imagen             varchar(255)      NOT NUll,
    oferta             varchar(200)     NOT NUll,
    id_categoria    int(11)    NOT NUll,
    CONSTRAINT pk_producto    PRIMARY KEY (id_producto),
    CONSTRAINT fk_producto_categoria FOREIGN KEY(id_categoria) REFERENCES t_categorias(id_categoria)
)ENGINE=InnoDb;