#define string_find_word_endpoints
///string_find_word_endpoints(string, pos)

    //check if we are selecting a space
    if (string_copy(argument0, argument1, 1) = " ")
    {
        //for spaces
        var apos, bpos;
        apos = clamp(argument1, 0, string_length(argument0));
        bpos = apos;
        
        //find endpoints of selection
        while (string_copy(argument0, apos, 1) = " ") 
        {
            apos -= 1;
            if (apos <= 0) break;
        }
        while (string_copy(argument0, bpos+1, 1) = " ") 
        {
            bpos += 1;
            if (bpos >= string_length(argument0)) break;
        }
        
        //return endpoints
        var ary;
        ary[0] = apos;
        ary[1] = bpos;
        return ary;
    }
    else
    {
        //symbols 
        if (string_copy(argument0, argument1, 1) != string_lettersdigits(string_copy(argument0, argument1, 1)))
        {
            //for symbols
            var apos, bpos;
            apos = clamp(argument1, 0, string_length(argument0));
            bpos = apos;
            
            //find endpoints of selection
            while (string_copy(argument0, apos, 1) != string_lettersdigits(string_copy(argument0, apos, 1))) 
            {
                apos -= 1;
                if (apos <= 0) break;
            }
            while (string_copy(argument0, bpos+1, 1) != string_lettersdigits(string_copy(argument0, bpos+1, 1))) 
            {
                bpos += 1;
                if (bpos >= string_length(argument0)) break;
            }
            
            //return endpoints
            var ary;
            ary[0] = apos;
            ary[1] = bpos;
            return ary;
        }
        else
        {
            //for words/numbers
            var apos, bpos;
            apos = clamp(argument1, 0, string_length(argument0));
            bpos = apos;
            
            //find endpoints of selection
            while (string_copy(argument0, apos, 1) = string_lettersdigits(string_copy(argument0, apos, 1))) 
            {
                apos -= 1;
                if (apos <= 0) break;
            }
            while (string_copy(argument0, bpos+1, 1) = string_lettersdigits(string_copy(argument0, bpos+1, 1))) 
            {
                bpos += 1;
                if (bpos >= string_length(argument0)) break;
            }
            
            //return endpoints
            var ary;
            ary[0] = apos;
            ary[1] = bpos;
            return ary;
        }
    }
    

#define string_find_position_x
///string_find_position_x(string, x, px, round)

var a, b, a1, b1;
for (i = 0; i <= string_length(argument0); i += 1)
{
    if ((string_width(string_copy(argument0, 0, i)) > (argument2-argument1)) || (i = string_length(argument0)))
    {
        a = i;
        b = max(i-1, 0);
        break;
    }
}
    
if (a = b) return a;
a1 = argument1+string_width(string_copy(argument0, 0, a));
b1 = argument1+string_width(string_copy(argument0, 0, b));

argument3 = sign(argument3);
switch (argument3)
{
    case 0:
        if (abs(argument2-a1) < abs(b1-argument2)) return a; else return b;
        break;
    case 1:
        return a;
        break;
    case -1:
        return b;
        break;
}



#define string_find_character_x
///string_find_character_x(string, x, px)

    //find new text position cursor
    var a, b, a1, b1;
    for (i = 0; i <= string_length(argument0); i += 1)
    {
        if ((string_width(string_copy(argument0, 0, i)) > (argument2-argument1)) || (i = string_length(argument0)))
        {
            a = i;
            b = max(i-1, 0);
            break;
        }
    }
    
    if (a = b) return string_copy(argument0, a, 1);
    a1 = argument1+string_width(string_copy(argument0, 0, a));
    b1 = argument1+string_width(string_copy(argument0, 0, b));
    
    if (abs(argument2-a1) < abs(b1-argument2)) return string_copy(argument0, a, 1); else return string_copy(argument0, b, 1);;
