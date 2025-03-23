var customers = 8

customers = customers + 3  // 11
customers += 1  // 12
customers -= 3  // 9
customers *= 2  // 18
customers /= 2  // 9

print("customers:", customers)  // customer: 9

private func declareVariableWithoutInitial() {
    // Variable declared without initialization
    let d: Int

    // Variable initialized
    d = 3

    // Variable explicitly typed and initialized
    let e: String = "hello"

    print("d:", d)  // d: 3
    print("e:", e)  // e: hello
}

declareVariableWithoutInitial()

private func errorInitial() {
    // Variable declared without initialization
    let d: Int

    // print(d)
    // Constant 'd' used before being initialized
}
