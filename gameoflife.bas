1 REM
2 REM Conways game of life 
3 REM Teemu Leppanen (tjlepp@gmail.com)
5 REM
6 REM *** initialize ***
10 LET s=12: LET z=s-1: LET r=1
12 DIM c(s,s): DIM n(s,s)
20 RANDOMIZE
30 FOR i=2 TO z: FOR j=2 TO z
35 LET c(i,j) = INT (RND *2)
38 NEXT j: NEXT i
50 REM *** print board ***
52 CLS
54 PRINT "    * Conway's Game of Life *": PRINT: PRINT "Iteration: ";r: PRINT: PAPER 6
60 FOR i=2 TO z: FOR j=2 TO z
62 IF c(i,j)=1 THEN PRINT CHR$ 143;
64 IF c(i,j)=0 THEN PRINT CHR$ 128;
68 NEXT j: PRINT: NEXT i
100 REM *** next iteration ***
105 PAPER 7: PRINT: PRINT "Processing...": PRINT
120 FOR i=2 TO z: FOR j=2 TO z: LET d=0
122 IF c(i-1,j-1)=1 THEN LET d=d+1
123 IF c(i-1,j)=1 THEN LET d=d+1
124 IF c(i-1,j+1)=1 THEN LET d=d+1
125 IF c(i,j-1)=1 THEN LET d=d+1
126 IF c(i,j+1)=1 THEN LET d=d+1
127 IF c(i+1,j-1)=1 THEN LET d=d+1
128 IF c(i+1,j)=1 THEN LET d=d+1
129 IF c(i+1,j+1)=1 THEN LET d=d+1
130 IF d<2 THEN LET n(i,j)=0
132 IF d=2 AND c(i,j)=1 THEN LET n(i,j)=1
134 IF d=3 THEN LET n(i,j)=1
136 IF d>3 THEN LET n(i,j)=0
138 NEXT j: NEXT i
140 FOR i=2 TO z: FOR j=2 TO z
145 LET c(i,j)=n(i,j)
148 NEXT j: NEXT i
150 LET r=r +1
150 GO TO 50








