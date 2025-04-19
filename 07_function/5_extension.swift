extension String {
    var startsWithA: Bool {
        lowercased().hasPrefix("a")
    }

    func prefixWith(_ prefix: String) -> String {
        prefix + self
    }
}

print("Hello".startsWithA)
print("All".prefixWith("Hello "))
