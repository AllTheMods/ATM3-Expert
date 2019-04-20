#vanilla recipe changes will be here

val IronPlate = <thermalfoundation:material:32>



#Minecraft bucket
recipes.remove(minecraft:bucket);
recipes.addShaped("CTbucket", minecraft:bucket,
 [[null, null, null],
 [IronPlate, null, IronPlate],
 [null, IronPlate, null]]);
 
