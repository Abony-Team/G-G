///pause_system_draw_overlay(surface,colour,alpha)


var S = argument0 ;
var C = argument1 ;
var A = argument2 ;

var PC = draw_get_colour() ;
var PA = draw_get_alpha() ;

//If the given surface exists, draw it otherwise recreate it
if (surface_exists(S))
    {
    draw_surface(S,0,0) ;
    draw_set_alpha(A) ;
    draw_set_colour(C) ;
    draw_rectangle(0,0,view_wview[view_current],view_hview[view_current],false) ;
    draw_set_colour(PC) ;
    draw_set_alpha(PA) ;
    }
else
    {
    return pause_system_start() ;
    }

//Return the handle for the surface
return S ;