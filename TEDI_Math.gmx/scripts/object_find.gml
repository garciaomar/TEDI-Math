//// object_find(object, tag)

// Arguments
var object = argument0;
var tag = argument1;

// Find the object with the same tag
for(var i = 0; i < instance_number(object); i++){
    var o = instance_find(object, i);
    if(o.tag == tag){
        return o;
    }
}

return NULL;
