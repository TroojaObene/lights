scoreboard players add #temp Player_Id 1
scoreboard players set #matches Player_Id 0
execute as @e if score #temp Player_Id = @s Player_Id run scoreboard players add #matches Player_Id 1

execute unless score #matches Player_Id matches 0 run function math:players/smallest_id_find
execute if score #matches Player_Id matches 0 run scoreboard players operation smallest Player_Id = #temp Player_Id