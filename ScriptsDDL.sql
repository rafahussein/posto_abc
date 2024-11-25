CREATE TABLE TB_TANQUES (
    ID_TANQUE  INTEGER GENERATED BY DEFAULT AS IDENTITY,
    DESCRICAO  VARCHAR(60) NOT NULL,
    TIPO       INTEGER NOT NULL
);

ALTER TABLE TB_TANQUES ADD CONSTRAINT PK_TB_TANQUES PRIMARY KEY (ID_TANQUE);


CREATE TABLE TB_BOMBAS (
    ID_BOMBA   INTEGER GENERATED BY DEFAULT AS IDENTITY,
    DESCRICAO  VARCHAR(60) NOT NULL,
    ID_TANQUE  INTEGER NOT NULL
);

ALTER TABLE TB_BOMBAS ADD CONSTRAINT PK_TB_BOMBAS PRIMARY KEY (ID_BOMBA);
ALTER TABLE TB_BOMBAS ADD CONSTRAINT FK_IDBOMBATANQUE FOREIGN KEY (ID_TANQUE) REFERENCES TB_TANQUES (ID_TANQUE);



CREATE TABLE TB_ABASTECIMENTOS (
    ID_ABASTECIMENTO  INTEGER GENERATED BY DEFAULT AS IDENTITY,
    DATA              DATE NOT NULL,
    ID_BOMBA          INTEGER NOT NULL,
    LITROS            DECIMAL(10,2) NOT NULL,
    VALOR             DECIMAL(10,2) NOT NULL,
    IMPOSTO           DECIMAL(10,2) NOT NULL
);

ALTER TABLE TB_ABASTECIMENTOS ADD CONSTRAINT PK_TB_ABASTECIMENTOS PRIMARY KEY (ID_ABASTECIMENTO);
ALTER TABLE TB_ABASTECIMENTOS ADD CONSTRAINT FK_IDABASTECIMENTOBOMBA FOREIGN KEY (ID_BOMBA) REFERENCES TB_BOMBAS (ID_BOMBA);



CREATE TABLE TB_CONFIGURACAO (
    ID_CONFIGURACAO       INTEGER GENERATED BY DEFAULT AS IDENTITY,
    VALOR_LITRO_GASOLINA  DECIMAL(10,2) NOT NULL,
    VALOR_LITRO_DIESEL    DECIMAL(10,2) NOT NULL,
    VALOR_IMPOSTO         DECIMAL(10,2) NOT NULL
);

ALTER TABLE TB_CONFIGURACAO ADD CONSTRAINT PK_TB_CONFIGURACAO PRIMARY KEY (ID_CONFIGURACAO);






