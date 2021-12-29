scoreboard players set @s Light_Id 0
function math:lights/smallest_id
scoreboard players operation @s Light_Id = smallest Light_Id
tag @s remove placed
scoreboard players operation @p[tag=lights] selected_Id = @s Light_Id