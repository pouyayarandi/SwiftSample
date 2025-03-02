
struct Person {
    let firstName: String
    let lastName: String

    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

// Structs don't need init, swift generates for them
// However, you can implement init for them
let me = Person(firstName: "Pouya", lastName: "Yarandi")
print(me.fullName)
