func forRanges() {

    // 1 2 3 4 5
    for i in 1...5 {
        print(i, terminator: " ")
    }
    print("")

    // 1 2 3 4
    for i in 1..<5 {
        print(i, terminator: " ")
    }
    print("")

    // 5 4 3 2 1
    for i in stride(from: 5, through: 1, by: -1) {
        print(i, terminator: " ")
    }
    print("")

    // 5 3 1
    for i in stride(from: 5, through: 1, by: -2) {
        print(i, terminator: " ")
    }
    print("")
}

func forCollections() {
    let cakes = ["carrot", "cheese", "chocolate"]

    for cake in cakes {
        print("Yummy, it's a \(cake) cake!")
    }

    for (index, cake) in cakes.enumerated() {
        print("#\(index) Yummy, it's a \(cake) cake!")
    }
}

forRanges()
forCollections()
