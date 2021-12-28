tag @s add selected_light

execute as @a[tag=lights] at @s if score @s selected_Id = @e[limit=1,type=marker,tag=still,tag=light,tag=selected_light] Light_Id run function lights:control/still
execute as @a[tag=lights] at @s if score @s selected_Id = @e[limit=1,type=marker,tag=moving,tag=light,tag=selected_light] Light_Id run function lights:control/moving

tag @s remove selected_light