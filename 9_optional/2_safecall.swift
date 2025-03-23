var optional: String? = "swift"

if let safe = optional {
	print(safe)  // `safe` is not optional anymore
}

if let optional {
	print(optional)  // `optional` is not optional anymore (in this scope)
}

optional = nil

print(optional ?? "empty")  // empty
