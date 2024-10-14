advancement revoke @s only mon:receive

playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~
function mon:bank/pay_note with entity @s SelectedItem.components{}."minecraft:custom_data"{}