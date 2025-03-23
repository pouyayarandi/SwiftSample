var neverNull = "This can't be nil"

// Throws a compiler error:
// 'nil' cannot be assigned to type 'String'
// neverNull = nil

var nullable: String? = "You can keep a nil here"

// This is OK
nullable = nil

func uppercase(_ str: String) -> String {
	str.uppercased()
}

print(uppercase(neverNull))

// Throws a compiler error:
// Value of optional type 'String?' must be unwrapped
// to a value of type 'String'
// uppercase(nullable)
