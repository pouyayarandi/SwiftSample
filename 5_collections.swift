
func createReadOnlyList() {
    let list = ["triangle", "square", "circle"]

    // list.append("")
    // Cannot use mutating member on immutable value: 'list' is a 'let' constant

    print("list:", list)

    print("first item of list:", list[0])
    print("first item of list:", list.first!)
    print("last item of list:", list.last!)

    print("list has \(list.count) items")
    print(list.contains("circle"))
}

func createMutableList() {
    var list = ["triangle", "square", "circle"]
    print(list)

    list.append("pentagon")
    print(list)

    list.remove(at: 0)
    print(list)

    let lockedList = list
    print(lockedList)
}

func createSet() {
    var set: Set<String> = ["apple", "banana", "cherry", "cherry"]
    print(set)

    set.insert("kiwi")
    print(set)

    set.remove("kiwi")
    print(set)

    print(set.contains("apple"))

    let lockedSet = set
    print(lockedSet)
}

func createMap() {
    let juiceMenu = [
        "apple": 100,
        "kiwi": 190,
        "orange": 180,
    ]

    print("value of apple juice:", juiceMenu["apple"]!)
    print(juiceMenu.keys.contains("kiwi"))

    print(juiceMenu.keys)
    print(juiceMenu.values)

    var mutableJuiceMenu = juiceMenu
    mutableJuiceMenu["coconut"] = 150
    mutableJuiceMenu.removeValue(forKey: "apple")
    print(mutableJuiceMenu)
}

createReadOnlyList()
createMutableList()
createSet()
createMap()
