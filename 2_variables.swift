
// Stored variable
let text = "hello"
let number = 10
var otherNumber = 8

otherNumber = 7

// text = "bye"
// Cannot assign to value: 'text' is a 'let' constant

print(text, number, otherNumber) // hello 10 7

let (x, y) = (10, 20)
print(x, y) // 10 20

// Computed variable
var sumNumber: Int {
    number + otherNumber
}

print(sumNumber) // 17
