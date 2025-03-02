
func printMessage(message: String, prefix: String = "Info") -> Void {
    print("[\(prefix)] \(message)")
}

// Void in swift == Unit in kotlin
// Unlike kotlin, name and order of arguments always matter in swift

printMessage(message: "Hello", prefix: "Log") // [Log] Hello
printMessage(message: "Hello")                // [Info] Hello

// Use _ to call sum without arg names
// If body is one line, return is not neccessary
func sum(_ a: Int, _ b: Int) -> Int {
    a + b
}

print(sum(2, 3)) // 5
