///pause_system_start()

//Entire  system is based on the Application Surface, Make sure its enabled
application_surface_enable(true) ;

//We create a surface the size of the view.
var PauseSurface = surface_create(view_wview[view_current],view_hview[view_current]);

//Now let's draw to that surface
surface_set_target(PauseSurface)
    //Fixes several graphical glitches
    draw_clear_alpha(c_black,1) ;  
    //Draw what is on the screen
    draw_surface(application_surface,0,0) ;
//Now all drawing is done to the application_surface as normal
surface_reset_target() ;


//Deactivate all pausable objects
instance_deactivate_object(par_pausable) 

//Controls the Unpausing/pausing
Paused = true ;

//Return the handle for the surface
return PauseSurface ;