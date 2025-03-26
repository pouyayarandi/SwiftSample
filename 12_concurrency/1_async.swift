func greetingAfterTwoSeconds() async {
    try? await Task.sleep(for: .seconds(2))
    print("Hello after one second")
}

await greetingAfterTwoSeconds()
