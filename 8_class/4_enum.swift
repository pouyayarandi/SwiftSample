enum State {
    case ready
    case processing
    case terminated
}

let state: State = .ready
print(state)  // ready

// Enums can have raw value
enum Color: String {
    case red
    case green
    case blue = "blueee"
}

print(Color.green.rawValue)  // green
print(Color.blue.rawValue)  // blueee

// Enums can have associated value
enum Result {
    case success(String)
    case failure(Error)

    var string: String {
        switch self {
        case .success(let string):
            return string
        case .failure:
            return ""
        }
    }
}

let result: Result = .success("Hello")
print(result)  // success("Hello")
print(result.string)  // Hello
