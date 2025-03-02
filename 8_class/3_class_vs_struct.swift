
class PersonClass {
    var name: String

    init(name: String) {
        self.name = name
    }
}

struct PersonStruct {
    var name: String
}

// Classes are reference type
var personClass = PersonClass(name: "a")
var newPersonClass = personClass
personClass.name = "b"
print(newPersonClass.name) // b

// Structs are value type
var personStruct = PersonStruct(name: "a")
var newPersonStruct = personStruct
personStruct.name = "b"
print(newPersonStruct.name) // a
