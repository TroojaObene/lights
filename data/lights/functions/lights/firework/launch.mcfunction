#summon direction marker
summon marker ^ ^ ^1 {Tags:["F_dir"]}

#summon firework
summon firework_rocket ^ ^ ^1 {LifeTime:60,ShotAtAngle:1b,Motion:[0.0,0.0,0.0],Rotation:[0F,-90F],Tags:["fired"],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:1b,Colors:[I;16777215],FadeColors:[I;0]}]}}}}

# get the coordinates of the player and the entity
execute store result score #startX pos run data get entity @s Pos[0] 1000
execute store result score #startY pos run data get entity @s Pos[1] 1000
execute store result score #startZ pos run data get entity @s Pos[2] 1000
execute store result score #endX pos as @e[type=marker,tag=F_dir,limit=1] run data get entity @s Pos[0] 1000
execute store result score #endY pos as @e[type=marker,tag=F_dir,limit=1] run data get entity @s Pos[1] 1000
execute store result score #endZ pos as @e[type=marker,tag=F_dir,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #endX pos -= #startX pos
scoreboard players operation #endY pos -= #startY pos
scoreboard players operation #endZ pos -= #startZ pos

# apply motion to projectile
execute store result entity @e[type=firework_rocket,tag=fired,limit=1] Motion[0] double 0.001 run scoreboard players get #endX pos
execute store result entity @e[type=firework_rocket,tag=fired,limit=1] Motion[1] double 0.001 run scoreboard players get #endY pos
execute store result entity @e[type=firework_rocket,tag=fired,limit=1] Motion[2] double 0.001 run scoreboard players get #endZ pos


tag @e remove fired
tag @s remove launch
kill @e[tag=F_dir]