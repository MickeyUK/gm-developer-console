/// string_explode_array(string,seperator);
var i,s,str=argument0,sep=argument1,
len=string_length(sep)-1,no=string_count(sep,str);

// Abort
if str = "" then return undefined;

var arr;
for(i=0; i<=no; i+=1;) {
    s = str;
    repeat (i) s = string_delete(s,1,string_pos(sep,s)+len);
    s = string_delete(s,string_pos(sep,s),string_length(s));
    if string_real(s) then arr[i] = real(s) 
    else arr[i] = s;
}
return arr;
