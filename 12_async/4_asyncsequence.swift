func numbersWithDelay() -> any AsyncSequence<Int, Never> {
	AsyncStream { continuation in
		Task {
			for i in 1...5 {
				try await Task.sleep(for: .seconds(1))
				continuation.yield(i)
			}
			continuation.finish()
		}
	}
}

struct BigNumberError: Error {}

func numbersWithDelayedError() -> any AsyncSequence<Int, Error> {
	AsyncThrowingStream { continuation in
		Task {
			for i in 1...5 {
				if i > 3 {
					continuation.finish(throwing: BigNumberError())
				}

				try await Task.sleep(for: .seconds(1))
				continuation.yield(i)
			}
			continuation.finish()
		}
	}
}

func iterateOnNumbersWithDelay() async {
	for await number in numbersWithDelay() {
		print(number)
	}
}

func iterateOnNumbersWithDelayedError() async {
	do {
		for try await number in numbersWithDelayedError() {
			print(number)
		}
	} catch {
		print(error)
	}
}

await iterateOnNumbersWithDelay()
await iterateOnNumbersWithDelayedError()
