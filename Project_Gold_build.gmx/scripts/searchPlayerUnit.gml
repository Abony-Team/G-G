for (i = 0; i < instance_count; i += 1) {
    units = instance_id[i];
            
        if collision_circle(x,y,range,units,false,true)&& units.obj_type = "player_unit" {
            myEnemy = units;
            speed = global.g_speed;
            move_towards_point(myEnemy.x,myEnemy.y,speed);
            direction = point_direction(x,y,myEnemy.x,myEnemy.y);
                
                if distance_to_object(myEnemy) < 1 {
                    speed = 0;
                        
                        if atk = true {
                            myEnemy.hp -= global.s_minatk + round(random(global.g_maxatk - global.g_minatk));
                            alarm[0] = room_speed * 1.8;
                            atk = false;
                            effect_create_below(ef_flare,myEnemy.x,myEnemy.y,myEnemy.sprite_width * 1.4,c_red);
                        }
                        
                        if myEnemy.hp < 1 {
                            speed = global.g_speed;
                        }
                }
                else {
                    speed = global.g_speed;
                    move_towards_point(myEnemy.x,myEnemy.y,speed);
                }
            
            break;
            }
}
