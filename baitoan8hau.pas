{$A+,B-,D+,E+,F-,G-,I+,L+,N-,O-,P-,Q+,R+,S+,T-,V+,X+} {$M 16384,0,655360}
USES crt;

CONST    fo = 'hau.out';
         n  = 8;

VAR      A    :         ARRAY[1..n,1..n] OF BYTE;
         c    :         ARRAY[1..n] OF BYTE;
         dc1  :         ARRAY[2..2*n] OF BYTE;
         dc2  :         ARRAY[1-n..n-1] OF BYTE;
         sn   :         INTEGER;
         f    :         TEXT;

PROCEDURE ghino;
VAR       i,j   :       BYTE;
BEGIN
     inc(sn);
     writeln(f,'Nghiem thu ',sn,' la :');
     FOR i := 1 TO n DO
         BEGIN
              FOR j := 1 TO n DO
                  write(f,A[i,j],#32);
              writeln(f);
         END;
     writeln(f);
END;

PROCEDURE vet(i  :   BYTE);
VAR       j      :   BYTE;
BEGIN

     IF i = n+1 THEN
        BEGIN
             ghino;
             exit;
        END;

     FOR j := 1 TO n DO
         IF (c[j] =0)AND(dc1[i+j]=0) AND (dc2[i-j]=0) THEN
            BEGIN
                 A[i,j] := 1; c[j] := 1; dc1[i+j] :=1 ; dc2[i-j] := 1;
                 vet(i+1);
                 A[i,j] := 0; c[j] := 0; dc1[i+j] :=0 ; dc2[i-j] := 0;
            END;
END;

BEGIN
    assign(f,fo);
    rewrite(f);
    vet(1);
    close(f);
END.
