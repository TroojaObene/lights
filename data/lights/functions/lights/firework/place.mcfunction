scoreboard players set @s Light_Id 0
function math:lights/smallest_id
scoreboard players operation @s Light_Id = smallest Light_Id

#add deafult scores
scoreboard players set @s F_color 16777215
scoreboard players set @s F_FadeColors 0
scoreboard players set @s F_flight 2
scoreboard players set @s F_lifeTime 20
scoreboard players set @s F_trail 1
scoreboard players set @s F_flicker 0
scoreboard players set @s F_type 0

tag @s remove placed
scoreboard players operation @p[tag=lights] selected_Id = @s Light_Id