a1 = argument0;
a2 = argument1;

if(a1 > 180 && a2 < a1 - 180) return 360 + a2 - a1;
if(a1 < 180 && a2 > 360 + a1 - 180) {
    show_debug_message("Here");
    return -(360 - a2 + a1);
}
return a2 - a1;
