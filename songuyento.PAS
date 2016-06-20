PROGRAM songuyento;
VAR i,n,j:LONGINT;
p: ARRAY [1..10000] OF BOOLEAN;
BEGIN 
    write('nhap n');
readln(n);
 fillchar(p, sizeof(p), TRUE);
           FOR i:=2 TO n DO
           IF (p[i]) THEN
        BEGIN  
     j:=i+i;
           WHILE (j<=n) DO
            BEGIN
               p[j]:=FALSE;
              j:=j+i;
            END;
        END;
        FOR i:=2 TO n DO
        IF p[i] THEN write(i:5);
        readln
 END.
