import minetweaker.data.IData;
import minetweaker.item.IItemStack;

//Adding dictionaries for easier scripting (better performance?)
var botPlants = [<Botania:flower:0>, <Botania:flower:1>, <Botania:flower:2>, <Botania:flower:3>, <Botania:flower:4>, <Botania:flower:5>, <Botania:flower:6>, <Botania:flower:7>, <Botania:flower:8>, <Botania:flower:9>, <Botania:flower:10>, <Botania:flower:11>, <Botania:flower:12>, <Botania:flower:13>, <Botania:flower:14>, <Botania:flower:15>] as IItemStack[];

var botPlantsDouble = [<Botania:doubleFlower1:0>, <Botania:doubleFlower1:1>, <Botania:doubleFlower1:2>, <Botania:doubleFlower1:3>, <Botania:doubleFlower1:4>, <Botania:doubleFlower1:5>, <Botania:doubleFlower1:6>, <Botania:doubleFlower1:7>, <Botania:doubleFlower2:0>, <Botania:doubleFlower2:1>, <Botania:doubleFlower2:2>, <Botania:doubleFlower2:3>, <Botania:doubleFlower2:4>, <Botania:doubleFlower2:5>, <Botania:doubleFlower2:6>, <Botania:doubleFlower2:7>] as IItemStack[];

var botDyes = [<Botania:dye:0>, <Botania:dye:1>, <Botania:dye:2>, <Botania:dye:3>, <Botania:dye:4>, <Botania:dye:5>, <Botania:dye:6>, <Botania:dye:7>, <Botania:dye:8>, <Botania:dye:9>, <Botania:dye:10>, <Botania:dye:11>, <Botania:dye:12>, <Botania:dye:13>, <Botania:dye:14>, <Botania:dye:15>] as IItemStack[];

//To Do, Chisel slabs
var slabs = [<minecraft:stone_slab>, <minecraft:stone_slab:3>, <minecraft:stone_slab:4>, <minecraft:stone_slab:5>, <minecraft:stone_slab:6>, <minecraft:wooden_slab>, <minecraft:wooden_slab:1>, <minecraft:wooden_slab:2>, <minecraft:wooden_slab:3>, <minecraft:wooden_slab:4>, <minecraft:wooden_slab:5>, <Thaumcraft:blockCosmeticSlabWood>, <Thaumcraft:blockCosmeticSlabWood:1>, <Thaumcraft:blockCosmeticSlabStone>, <arsmagica2:witchwoodSingleSlab>] as IItemStack[];

var slabResult = [<minecraft:stone>, <minecraft:cobblestone>, <minecraft:brick_block>, <minecraft:stonebrick>, <minecraft:nether_brick>, <minecraft:planks>, <minecraft:planks:1>, <minecraft:planks:2>, <minecraft:planks:3>, <minecraft:planks:4>, <minecraft:planks:5>, <Thaumcraft:blockWoodenDevice:6>, <Thaumcraft:blockWoodenDevice:7>, <Thaumcraft:blockCosmeticSolid:7>, <arsmagica2:planksWitchwood>] as IItemStack[];

//Easier floral dye
for i, plant in botPlants {
    var dye = botDyes[i];
    recipes.addShapeless(dye * 2, [plant, <Botania:pestleAndMortar>]);
}
for i, plant in botPlantsDouble {
    var dye = botDyes[i];
    recipes.addShapeless(dye * 4, [plant, <Botania:pestleAndMortar>]);
}

//Fixing several slabs (excluded chiselled sandstone and quartz block)
for i, slab in slabs {
    var result = slabResult[i];
    recipes.addShapeless(result, [slab, slab]);
}