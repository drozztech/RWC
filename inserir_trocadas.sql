USE rwc;
INSERT INTO `trocadas` (
    ID_PECA,
    _data,
    marca_momento,
    preco_momento,
    link_momento
)
SELECT
    ID,
    CURRENT_DATE(),
    marca,
    preCo,
    link
FROM `peças`
WHERE ID = X;

-- Registra uma peça na tabela trocadas,
-- copiando seus dados de peças e atribuindo a data atual.