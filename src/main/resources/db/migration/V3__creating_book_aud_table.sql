DROP TABLE IF EXISTS book_aud;
CREATE TABLE book_aud (
    id bigint(20) NOT NULL,
    rev int(11) NOT NULL,
    revtype tinyint(4) DEFAULT NULL,
    title varchar(100) DEFAULT NULL,
    author_name varchar(50) DEFAULT NULL,
    pages INT(50) DEFAULT NULL,
    PRIMARY KEY (`id`,`rev`),
    KEY `FK_book_revinfo` (`rev`),
    CONSTRAINT `FK_book_revinfo` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`)
);