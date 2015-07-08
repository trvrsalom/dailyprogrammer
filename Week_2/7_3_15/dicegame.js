/**
 * dicegame.js
 * Created for: https://www.reddit.com/r/dailyprogrammer/comments/2qxrtk/20141231_challenge_195_intermediate_math_dice/
 * Author: Trevor Salom
 * Notes: Built for Mozilla Foundation's Rhino JavaScript Engine, so if your running this anywhere else,
 * you should change print() to console.log()
 * Also, I couldn't think of a good algorithm, so feel free to change the count limit on the while loop
 */
 
function isTarget(target, parts) {
    var sum = 0;
    for(var i = 0; i < parts.length; i++) {
        sum += parts[i];
    }
    return sum == target;
}
var target = Math.round(Math.random() * 11 + 1);
var nums = [];
var negnums = [];
var curr = [];
for(var i = 0; i < 5; i++) {
    nums.push(Math.round(Math.random() * 5 + 1))
    negnums.push(-1 * nums[i]);
}

curr = nums;

print (target + ": " + nums);

count = 0;
while(!isTarget(target, curr) && count < 1000000) {
    curr = []
    for(var i = 0; i < nums.length; i++) {
        var pn = Math.random() > 0.5
        curr.push(pn ? nums[i] : negnums[i]);
    }
    count++;
}
if(isTarget(target,curr))
    print(curr.join(" + ") + " = " + target);
else
    print("Couldn't find a legal combination");