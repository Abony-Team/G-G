///pause_system_draw_ext(surface,shader)
//See pause_system_draw

var S = argument0 ;
var SH = argument1 ;

if (surface_exists(S))
    {
    var SIC = shader_is_compiled(SH) ;
    if (SIC)
        {
        shader_set(SH) ;
        }
    draw_surface(S,0,0) ;
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