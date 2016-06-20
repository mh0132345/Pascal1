PROGRAM Cap_so_cong;
USES crt;
VAR 
    n,MaxL,r,previous:BYTE;
    MaxA,A,Inp:ARRAY[1..100] OF INTEGER;
PROCEDURE Init;
VAR 
    i:INTEGER;
BEGIN
    write('Nhap N : ');readln(n);
    FOR i:=1 TO n DO 
    begin
        write('nhap phan tu thu',i);
        readln(Inp[i]); 
        END;
END;
PROCEDURE KeepResult(Max:BYTE);
BEGIN
    MaxL:=Max;
    MaxA:=A;
END;
FUNCTION Finish(Last,Pre:BYTE):BOOLEAN;
VAR
    i,csc:BYTE;
BEGIN
    Finish:=TRUE;
    csc:=A[Last]-A[Last-1];
    FOR i:=Pre+1 TO n DO
        IF csc=Inp[i]-A[Last] THEN BEGIN Finish:=FALSE;exit; END;
END;      
PROCEDURE Attempt(i:BYTE);  
VAR
    j:INTEGER;     
BEGIN
    FOR j:=previous+1 TO n DO
        IF (i<=2) OR ((i>2) AND (A[i-1]-A[i-2]=Inp[j]-A[i-1])) THEN
            BEGIN 
                A[i]:=Inp[j];previous:=j;
                IF (i>2) AND (Finish(i,previous)) THEN
                    BEGIN    
                      IF i>MaxL THEN KeepResult(i);
                    END
                ELSE Attempt(i+1);
            END;
END;
BEGIN
clrscr;
    Init; 
    MaxL:=0;previous:=0;
    Attempt(1);
    writeln('Do dai : ',MaxL);  
    FOR r:=1 TO MaxL DO write(MaxA[r],' ');
readln;
END.