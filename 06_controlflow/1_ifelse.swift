let number = 10

if number > 5 {
    print("number is greater than 5")
} else if number < 5 {
    print("number is less than 5")
} else {
    print("number is 5")
}

let text = number % 2 == 0 ? "even" : "odd"

let anotherText =
    if number % 2 == 0 {
        "even"
    } else {
        "odd"
    }

// It could be written in one line
// let anotherText = if number % 2 == 0 { "even" } else { "odd" }

print(text)  // even
print(anotherText)  // even

func useGuards() {
    // Guards act as reverse of if
    guard number > 5 else {
        return
    }
    print("number is greater than 5")
}

useGuards()
