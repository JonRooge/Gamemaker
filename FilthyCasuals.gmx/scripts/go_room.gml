var dir = argument0;


// shuffle rooms
ds_list_shuffle(possible_rooms);

switch(dir){
    case 'up':
        if ( is_undefined(map[? string(cur_roomx+1) + string(cur_roomy)]) ){
            ds_map_add(map, string(cur_roomx+1) + string(cur_roomy), 'room' + string(ds_list_find_value(possible_rooms, 0)));
            room_goto(asset_get_index(map[? string(cur_roomx+1) + string(cur_roomy)]));
            
        }  
        else {
            room_goto(asset_get_index(map[? string(cur_roomx+1) + string(cur_roomy)]));
        }
        cur_roomx += 1;
        break;
    case 'down':
        if ( is_undefined(map[? string(cur_roomx-1) + string(cur_roomy)]) ){
            ds_map_add(map, string(cur_roomx-1) + string(cur_roomy), 'room' + string(ds_list_find_value(possible_rooms, 0)));
            room_goto(asset_get_index(map[? string(cur_roomx-1) + string(cur_roomy)]));
            
        }  
        else {
            room_goto(asset_get_index(map[? string(cur_roomx-1) + string(cur_roomy)]))
        }
        cur_roomx -= 1;
        break;
    case 'left':
        if ( is_undefined(map[? string(cur_roomx) + string(cur_roomy-1)]) ){
            ds_map_add(map, string(cur_roomx) + string(cur_roomy-1), 'room' + string(ds_list_find_value(possible_rooms, 0)));
            room_goto(asset_get_index(map[? string(cur_roomx) + string(cur_roomy-1)]));
            show_debug_message('moved to ...');
            
        }  
        else {
            room_goto(asset_get_index(map[? string(cur_roomx) + string(cur_roomy-1)]));
        }
        cur_roomy -= 1;
        show_debug_message(map[? string(cur_roomx) + string(cur_roomy)]);
        break;
    case 'right':
        if ( is_undefined(map[? string(cur_roomx) + string(cur_roomy+1)]) ){
            ds_map_add(map, string(cur_roomx) + string(cur_roomy+1), 'room' + string(ds_list_find_value(possible_rooms, 0)));
            room_goto(asset_get_index(map[? string(cur_roomx) + string(cur_roomy+1)]));
            
        }  
        else {
            room_goto(asset_get_index(map[? string(cur_roomx) + string(cur_roomy+1)]));
        }
        cur_roomy += 1;
        break;
}
