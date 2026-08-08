
percent    = 0;
position   = 0;
base_value = 0;

call_later(1, time_source_units_frames, function(){
    if (instance_exists(object)) {
        base_value = object[$ variable_name] ?? 0;
    }
});