
// Unlike kotlin, swift doesn't have contextless switch

let d = 1
let t = "a"

switch d {
    case 0...9:
        print("number is one digit")
    case 10...99:
        print("number is two digits")
    default:
        print("invalid number")
}

switch (d, t) {
    // Different cases with same behavior
    case (1, "a"), (2, "b"):
        print("1a or 2b")
    default:
        break // Do nothing
}

let ascii = switch t {
case "a": 97
case "b": 98
case "c": 99
default: 0
}

print(ascii) // 97
