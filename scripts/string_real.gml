/// string_real(string)
var str=argument0;

str = string_lettersdigits(str);
str = string_letters(str);

if string_length(str) = 0 {
    return true;
} else {
    return false;
}
