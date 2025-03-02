
// Closures in swift == Lambdas in kotlin
let sum = { (a: Int, b: Int) in a + b }
print(sum(2, 4)) // 6

let uppercaseString: (String) -> String = { $0.uppercased() }
print(uppercaseString("hello")) // HELLO
