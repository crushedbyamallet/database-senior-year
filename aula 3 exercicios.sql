// ex1

SET SERVEROUTPUT ON;

BEGIN
    dbms_output.put_line('meu nome eh: ' || '&nome');
    
END;

// ex1 v2

ACCEPT nome CHAR PROMPT 'digite o seu nome';
DECLARE
    entrada varchar(100);
    
BEGIN
    entrada:= '&nome';
    dbms_output.put_line('meu nome eh: ' || entrada);
END;

// ex 2

DECLARE
    VL_REAL NUMBER;
    QTD_DOLAR NUMBER;
    TOTAL NUMBER;
    TX_CAMBIO NUMBER:=4.99;
BEGIN
    QTD_DOLAR:=10;
    VL_REAL:= QTD_DOLAR*TX_CAMBIO;
    
    dbms_output.put_line('a quantidade de dolares ' || QTD_DOLAR || 'dolares 
    em REAIS eh' || VL_REAL);
    
END;


// ex 2 v2

SET SERVEROUTPUT ON;

ACCEPT ent_dolar NUMBER PROMPT 'digite a quantidade em dolares';
ACCEPT ent_tx_cambio NUMBER PROMPT 'digite a taxa do cambio';

DECLARE
    VL_REAL NUMBER;
    QTD_DOLAR NUMBER;
    TX_CAMBIO NUMBER:= &ent_tx_cambio;

BEGIN
    QTD_DOLAR:=&ent_dolar;
    VL_REAL:= QTD_DOLAR*TX_CAMBIO;
    
    dbms_output.put_line('a quantidade de ' || QTD_DOLAR ||' dolares em 
    reais eh de' || VL_REAL);

END;
    
// ex 3

DECLARE
    PARC NUMBER;
    JUROS NUMBER;
    TX_JUROS NUMBER;
    VL_TOTAL NUMBER;
    QTD_PARC NUMBER;
    
BEGIN
    JUROS:=1.01; 
    VL_TOTAL:=5000;
    QTD_PARC:=5;
    PARC:=(VL_TOTAL/QTD_PARC*JUROS);
    dbms_output.put_line('quantidade de parcelas: ' || QTD_PARC);
    dbms_output.put_line('valor original da compra: ' || VL_TOTAL);
    dbms_output.put_line('valor da parcela: ' || PARC);
    dbms_output.put_line('valor da compra: ' || (PARC*QTD_PARC));
    dbms_output.put_line('juros da compra: ' || ((PARC*QTD_PARC)-VL_TOTAL));
END;



