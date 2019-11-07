//learn you know answer
let result = 0;

for (let i = 2; i < process.argv.length; i++) {
  result += Number(process.argv[i]);
}

console.log(result);

//group answer
let sum = 0;
process.argv.slice(2).forEach(function(arg) {
  sum += Number(arg);
});
console.log(sum);
