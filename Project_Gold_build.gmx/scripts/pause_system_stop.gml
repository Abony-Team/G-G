///pause_system_stop(surface)

//Frees the given surface and unpauses the game


var PauseSurface = argument0 ;
surface_free(PauseSurface) ;

instance_activate_object(par_pausable) 

Paused = false ;