#thermal expansion

val = copper <thermalfoundation:material:128>
val = tin <thermalfoundation:material:129>
val = bronze <thermalfoundation:material:163>
val - stonegear <thermalfoundation:material:23>
#Override gear recipe removal

#copper gear
recipes.removeShapeless(thermalfoundation:material:256, 
[[null, copper, null,
[copper, stonegear, copper],
[null, copper, null]]);

#bronze gear
recipes.removeShapeless(thermalfoundation:material:291,
[[null, bronze, null],
[bronze, stonegear, bronze],
[null, bronze, null]]);

#tin gear
recipes.removeShapeless(thermalfoundation:material:257,
[[null, tin, null],
[tin, stonegear, tin],
[null, tin, null]]);
