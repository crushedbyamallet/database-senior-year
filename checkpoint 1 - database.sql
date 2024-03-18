-- mary araujo moreira speranzini rm 550242

-- ex 1 (notas checkpoint)

DECLARE
   media_check NUMBER;
   CP1 NUMBER;
   CP2 NUMBER;
   CP3 NUMBER;
BEGIN
   DBMS_OUTPUT.PUT('nota CP1: ');
   CP1 := &CP1;
   DBMS_OUTPUT.PUT('nota CP2: ');
   CP2 := &CP2;
   DBMS_OUTPUT.PUT('nota CP3: ');
   CP3 := &CP3;
   IF CP1 < 0 OR CP1 > 10 OR CP2 < 0 OR CP2 > 10 OR CP3 < 0 OR CP3 > 10 THEN
       DBMS_OUTPUT.PUT_LINE('válor inválido, tente novamente');
   ELSE
       IF CP1 >= CP2 AND CP1 >= CP3 THEN
           media_check := (CP1 + GREATEST(CP2, CP3)) / 2;
       ELSIF CP2 >= CP1 AND CP2 >= CP3 THEN
           media_check := (CP2 + GREATEST(CP1, CP3)) / 2;
       ELSE
           media_check := (CP3 + GREATEST(CP1, CP2)) / 2;
       END IF;
       DBMS_OUTPUT.PUT_LINE('média CP: ' || media_check);
   END IF;
END;

-- ex 2 (notas sprint)

DECLARE
    media_sprint NUMBER;
    SP1 NUMBER;
    SP2 NUMBER;
BEGIN
    DBMS_OUTPUT.PUT('nota sprint 1: ');
    SP1 := &SP1;
    DBMS_OUTPUT.PUT('nota sprint 2: ');
    SP2 := &SP2;
 
    IF SP1 < 0 OR SP1 > 100 OR SP2 < 0 OR SP2 > 100 THEN
        DBMS_OUTPUT.PUT_LINE('válor inválido, tente novamente');
    ELSE
        media_sprint := (((SP1 + SP2) / 10) / 2);
 
        DBMS_OUTPUT.PUT_LINE('média sprint: ' || media_sprint);
    END IF;
END;

-- ex 3 (notas global solution)

DECLARE
    media_gs NUMBER;
    GS1 NUMBER;
BEGIN
    DBMS_OUTPUT.PUT('nota GS: ');
    GS1 := &GS1;
 
    IF GS1 < 0 OR GS1 > 100 THEN
        DBMS_OUTPUT.PUT_LINE('válor inválido, tente novamente');
    ELSE
        media_gs := (GS1 / 10);
 
        DBMS_OUTPUT.PUT_LINE('média GS: ' || media_gs);
    END IF;
END;

-- ex 4 (cálculo média final)

DECLARE
    MED_FINAL NUMBER;
    media_check NUMBER;
    media_sprint NUMBER;
    media_gs NUMBER;
BEGIN
    media_check := &media_check;
    media_sprint := &media_sprint;
    media_gs := &media_gs;
 
    MED_FINAL := (media_gs * 0.6) + (media_check * 0.2) + (media_sprint * 0.2);
 
    DBMS_OUTPUT.PUT_LINE('média final: ' || MED_FINAL);
 
    IF MED_FINAL >= 6.0 THEN
        DBMS_OUTPUT.PUT_LINE('aprovado');
    ELSIF MED_FINAL >= 2.0 AND MED_FINAL <= 5.9 THEN
        DBMS_OUTPUT.PUT_LINE('exame');
    ELSE
        DBMS_OUTPUT.PUT_LINE('reprovado');
    END IF;
END;

