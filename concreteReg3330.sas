proc import datafile="C:\Users\Anantika\OneDrive - York University\Copy of Concrete_Data.csv"
    out=concrete_data
    dbms=csv
    replace;
    getnames=yes;
run;
proc print data=concrete_data (obs=1);
run;
data concrete_renamed;
    set concrete_data;
    rename
        Cement__component_1__kg_in_a_m_3           = x1
        Blast_Furnace_Slag__component_2_           = x2
        Fly_Ash__component_3__kg_in_a_m_           = x3
        Water___component_4__kg_in_a_m_3           = x4
        Superplasticizer__component_5__k           = x5
        Coarse_Aggregate___component_6__           = x6
        Fine_Aggregate__component_7__kg            = x7
        Age__day_                                   = x8
        Concrete_compressive_strength_M            = y;
run;
proc reg data=concrete_renamed;
    model y = x1 x2 x3 x4 x5 x6 x7 x8/ selection=stepwise slentry=0.5 slstay=0.5 stb;
run;
quit;


