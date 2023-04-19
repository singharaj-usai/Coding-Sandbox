let person = { name: "John", age: 30, city: "New York" };

for (let prop in person) {
  console.log(prop + ": " + person[prop]);
}
