actor Counter {
	private(set) var value = 0

	func increase() {
		value += 1
	}

	func reset() {
		value = 0
	}
}

let counter = Counter()

await counter.increase()
await counter.increase()
await print("value:", counter.value)  // value: 2

await counter.reset()
await print("value:", counter.value)  // value: 0
