process.stdin.resume();
process.stdin.setEncoding('utf8');
// Your code here!

let name_list: string[] = ["northtown", "birdduplicate", "turtole"];

class CharacterCard {
    name: string;
    rarity: number;
}
var my_card: CharacterCard = new CharacterCard();
my_card.name = "黒魔術師";
my_card.rarity = 2;
console.log(my_card.name);
console.log(my_card.rarity);