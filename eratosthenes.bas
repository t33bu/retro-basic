1 REM
2 REM Sieve or Eratosthenes
3 REM Teemu Leppanen (tjlepp@gmail.com)
5 REM
10 INPUT "Max number?",v
12 CLS
15 PAPER 0: INK 7:  PRINT " * Sieve of Eratosthenes *"
17 PRINT: PAPER 7: INK 0
20 LET m= SQR v
30 DIM n(v)
35 PRINT "Just a moment, incrementing.. ";
40 FOR i=1 TO v: LET n(i)=i: NEXT i
50 REM *** loop ***
55 FOR i=2 TO m
57 PRINT i; " ";
60 FOR j=i TO v STEP i
65 IF i <> j THEN LET n(j)= -1
67 NEXT j: NEXT i
70 PAPER 0: INK 7: PRINT: PRINT
75 PRINT "Prime numbers up to ";v;":"
78 PRINT: PAPER 7: INK 0
80 FOR i=2 TO v: IF n(i) <> -1 THEN PRINT i: NEXT i
90 GO TO 10


