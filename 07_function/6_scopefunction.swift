func main() {
    func getRandomNumber() -> Int {
        Int.random(in: 0...9)
    }

    let num = getRandomNumber()
    print(num)
}

main()

// getRandomNumber()
// Cannot find 'getRandomNumber' in scope
