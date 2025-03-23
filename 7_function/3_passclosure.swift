func repeatN(_ n: Int, action: () -> Void) {
    for _ in 0..<n {
        action()
    }
}

repeatN(5) {
    print("ok")
}

// repeatN(5, action: {
//     print("ok")
// })
