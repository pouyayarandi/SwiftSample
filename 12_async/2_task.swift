func someAsyncFunction() async {
	try? await Task.sleep(for: .seconds(2))
	print("Hello")
}

let task = Task {
	await someAsyncFunction()
}

print("It runs before hello")
_ = await task.value
