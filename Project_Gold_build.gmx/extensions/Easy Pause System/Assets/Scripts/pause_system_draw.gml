///pause_system_draw(surface)


var S = argument0 ;
//If the given surface exists, draw it otherwise recreate it
if (surface_exists(S))
    {
    draw_surface(S,0,0) ;
    }
else
    {
    return pause_system_start() ;
    }

//Return the handle for the surface
return S ;