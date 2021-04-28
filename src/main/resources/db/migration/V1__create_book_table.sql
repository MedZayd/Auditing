DROP TABLE IF EXISTS book;

CREATE TABLE book (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    title varchar(100) NOT NULL,
    author_name varchar(50) NOT NULL,
    pages INT(50) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;