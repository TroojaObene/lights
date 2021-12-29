tag @s add selected_light

#light types
execute as @a[tag=lights] at @s unless score @s selected_Id matches 0 if score @s selected_Id = @e[limit=1,type=marker,tag=still,tag=light,tag=selected_light] Light_Id run function lights:lights/still/control
execute as @a[tag=lights] at @s unless score @s selected_Id matches 0 if score @s selected_Id = @e[limit=1,type=marker,tag=moving,tag=light,tag=selected_light] Light_Id run function lights:lights/moving/control
execute as @a[tag=lights] at @s unless score @s selected_Id matches 0 if score @s selected_Id = @e[limit=1,type=marker,tag=fill,tag=light,tag=selected_light] Light_Id run function lights:lights/fill/control
execute as @a[tag=lights] at @s unless score @s selected_Id matches 0 if score @s selected_Id = @e[limit=1,type=marker,tag=laser,tag=light,tag=selected_light] Light_Id run function lights:lights/laser/control
execute as @a[tag=lights] at @s unless score @s selected_Id matches 0 if score @s selected_Id = @e[limit=1,type=marker,tag=firework,tag=light,tag=selected_light] Light_Id run function lights:lights/firework/control

tag @s remove selected_light