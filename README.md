# SimpleEconomy
Minecraft 1.21+ Economy Datapack

### Withdraw
`/trigger withdraw set XX`

### Deposit
Banknote in hand + Right Click

### Help
`/trigger help`

### Creating a Banker
1. Configure items in `banker.mcfunction`
2. Ensure proper banknote configuration:

```
{id: "minecraft:paper", count: 1, components: {"item_name":'{"bold":false,"color":"green","text":"$100 Banknote"}',"food":{"saturation":1,"nutrition":1,"can_always_eat":true,"eat_seconds":69420},enchantment_glint_override:true, custom_data: {banknote:true,value:100}}}
```

Replace $100 with any amount
3. Rename Villager as "Banker" (case-sensitive) using a nametag

# To-do List
- Merchants
- Check Balance
- Pay Other Players
- Player Shops