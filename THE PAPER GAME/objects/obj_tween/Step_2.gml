
percent += 1 / time;

position = animcurve_channel_evaluate(anim_curve, percent);

if (instance_exists(object)) {
    object[$ variable_name] = base_value + (value - base_value) * position;
}

if (percent >= 1) {
    if (script_exists(callback)) {
        script_execute(callback);
    }
    instance_destroy();
}
