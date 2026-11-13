PROC IMPORT OUT= WORK.DD 
            DATAFILE= "C:\Users\Anantika\OneDrive - York University\data
Setfor3330.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
