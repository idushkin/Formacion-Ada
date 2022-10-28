package generic_demo is

   generic Type T is private; --private significa cualquier tipo
    procedure Generic_Swap(Value1: in out T;
                          Value2: in out T);

end generic_demo;
