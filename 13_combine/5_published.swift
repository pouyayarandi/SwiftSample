import Combine

class CounterViewModel {
	@Published var value: Int = 0

	func increase() {
		value += 1
	}

	func reset() {
		value = 0
	}
}

let viewModel = CounterViewModel()
let c = viewModel.$value.sink {
	print("number:", $0)
}

viewModel.increase()
viewModel.reset()
