for (i = 0; i < instance_count; i += 1) {
    units = instance_id[i];
            
        if collision_circle(x,y,range,units,false,true) && units.obj_type = "player_unit" {
            my_enemy = units;
            speed = global.s_speed;
            move_towards_point(my_enemy.x,my_enemy.y,speed);
            direction = point_direction(x,y,my_enemy.x,my_enemy.y);
                
                if distance_to_object(my_enemy) < 7 {
                    speed = 0;
                        
                        if atk = true {
                            my_enemy.hp -= global.s_minatk + round(random(global.s_maxatk - global.s_minatk));
                            alarm[0] = room_speed;
                            atk = false;
                            effect_create_below(ef_flare,my_enemy.x,my_enemy.y,my_enemy.sprite_width * 1.4,c_red);
                        }
                }
                else {
                    speed = global.s_speed;
                    move_towards_point(my_enemy.x,my_enemy.y,speed);
                }
            
            break;
            }
 }
