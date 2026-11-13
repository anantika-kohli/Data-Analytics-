PROC IMPORT OUT= WORK.REGRESSION_DATA 
            DATAFILE= "C:\Users\Anantika\OneDrive - York University\Docu
ments\Desktop\CASP.csv" 
            DBMS=CSV REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
