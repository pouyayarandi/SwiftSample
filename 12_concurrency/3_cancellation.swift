func someAsyncFunction() async {
	try? await Task.sleep(for: .seconds(10))

	guard !Task.isCancelled else {
		print("Task is cancelled")
		return
	}

	print("Hello")
}

let task = Task {
	await someAsyncFunction()
}

// wait for one second while the task takes 10 seconds
try await Task.sleep(for: .seconds(1))

task.cancel()
