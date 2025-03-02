
extension String {
    var startsWithA: Bool {
        hasPrefix("a") || hasPrefix("A")
    }

    func prefixWith(_ prefix: String) -> String {
        prefix + self
    }
}

print("Hello".startsWithA)
print("All".prefixWith("Hello "))
