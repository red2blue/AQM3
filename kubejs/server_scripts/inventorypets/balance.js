const invPetsRem = [
"inventorypets:pet_blaze",
"inventorypets:pet_creeper",
"inventorypets:pet_enderman",
"inventorypets:pet_ghast",
"inventorypets:pet_iron_golem",
"inventorypets:pet_magma_cube",
"inventorypets:pet_spider",
"inventorypets:pet_chicken",
"inventorypets:pet_cow",
"inventorypets:pet_ocelot",
"inventorypets:pet_pig",
"inventorypets:pet_sheep",
"inventorypets:pet_squid",
"inventorypets:pet_bed",
"inventorypets:pet_lead",
"inventorypets:pet_nether_portal",
"inventorypets:pet_saddle",
"inventorypets:pet_end_portal",
"inventorypets:pet_biome",
"inventorypets:pet_flying_saddle",
"inventorypets:pet_grave",
"inventorypets:pet_loot",
"inventorypets:pet_mickerson",
"inventorypets:pet_pingot",
"inventorypets:pet_purplicious_cow",
"inventorypets:pet_qcm",
"inventorypets:pet_quiver",
"inventorypets:pet_sponge",
"inventorypets:pet_cobblestone",
"inventorypets:pet_dirt",
"inventorypets:pet_juggernaut",
"inventorypets:pet_illuminati",
"inventorypets:pet_siamese",
"inventorypets:pet_apple",
"inventorypets:pet_cheetah",
"inventorypets:pet_house",
"inventorypets:pet_pacman",
"inventorypets:pet_pixie",
"inventorypets:pet_silverfish",
"inventorypets:pet_torch",
"inventorypets:pet_wolf",
"inventorypets:pet_dubstep",
"inventorypets:pet_heart",
"inventorypets:pet_moon",
"inventorypets:pet_shield",
"inventorypets:pet_april_fool",
"inventorypets:pet_christmas_tree",
"inventorypets:pet_menorah",
"inventorypets:pet_mishumaa_saba",
"inventorypets:pet_politically_correct",
"inventorypets:pet_black_hole",
"inventorypets:pet_cloud",
"inventorypets:pet_pufferfish",
"inventorypets:pet_slime",
"inventorypets:pet_anvil",
"inventorypets:pet_sun",
"inventorypets:pet_wither",
"inventorypets:item_petrifier"
]

onEvent('recipes', event => {
    invPetsRem.forEach(function(i) {
        event.remove({output: i})
    })
})