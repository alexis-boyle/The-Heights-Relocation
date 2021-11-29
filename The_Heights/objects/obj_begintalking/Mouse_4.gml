/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 06DA0C41
/// @DnDArgument : "objectid" "obj_introductory_text"
/// @DnDSaveInfo : "objectid" "obj_introductory_text"
instance_create_layer(0, 0, "Instances", obj_introductory_text);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4A0E55D2
/// @DnDApplyTo : {obj_begintalking}
with(obj_begintalking) instance_destroy();