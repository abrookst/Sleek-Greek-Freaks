if global.winner == 1 {
	if global.character1 == 1
		object_set_sprite(oSprite, sprPandoraJump);
	else if global.character1 == 2
		object_set_sprite(oSprite, sprHercJump);
	else if global.character1 == 3
		object_set_sprite(oSprite, sprMedusaJump);
	else if global.character1 == 4
		object_set_sprite(oSprite, sprOdysseusJump);
} else {
	if global.character2 == 1
		object_set_sprite(oSprite, sprPandoraJump);
	else if global.character2 == 2
		object_set_sprite(oSprite, sprHercJump);
	else if global.character2 == 3
		object_set_sprite(oSprite, sprMedusaJump);
	else if global.character2 == 4
		object_set_sprite(oSprite, sprOdysseusJump);
}
spriteObj = instance_create_layer(1000, 550, "Instances", oSprite)
spriteObj.image_xscale = 3.5;
spriteObj.image_yscale = 3.5;