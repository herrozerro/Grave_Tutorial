/// @description Insert description here
// You can write your code in this editor
var LayerId = layer_get_id("NearGravesBackground");
var BackgroundId = layer_background_get_id(LayerId);
layer_background_blend(BackgroundId,NearBackgroundColor);

LayerId = layer_get_id("FarGravesBackground");
BackgroundId = layer_background_get_id(LayerId);
layer_background_blend(BackgroundId,FarBackgroundColor);