/// console_add(command,admin?,argument values,argument types)

// Command and permissions
ds_list_add(con_cmds,argument[0]);
ds_list_add(con_cmds,argument[1]);

// Arguments & types
if argument_count > 2 {
    arg = string_explode_array(argument[2],",");
} else arg = noone;
if argument_count > 3 { 
    typ = string_explode_array(argument[3],",");
} else typ = noone;

ds_list_add(con_cmds,arg);
ds_list_add(con_cmds,typ);
