///pause_system_draw_shader_and_overlay(surface,shader,Colour,Alpha)
//See pause_system_draw

var S = argument0 ;
var SH = argument1 ;
var C = argument2 ;
var A = argument3 ;

var PC = draw_get_colour() ;
var PA = draw_get_alpha() ;

if (surface_exists(S))
    {
    var SIC = shader_is_compiled(SH) ;
    if (SIC)
        {
        shader_set(SH) ;
        }
    draw_surface(S,0,0) ;
    draw_set_colour(C) ;
    draw_set_alpha(A) ;
    draw_rectangle(0,0,view_wview[view_current],view_hview[view_current],false) ;
    draw_set_colour(PC) ;
    draw_set_alpha(PA) ;
    if (SIC)
        {
        shader_reset() ;
        }
    }
else
    {
    S = pause_system_start() ;
    }
return S ;