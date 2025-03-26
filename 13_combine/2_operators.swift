import Combine
import Foundation

var cancellables = Set<AnyCancellable>()

[1, 2, 3, 4, 5]
	.publisher
	.filter {
		$0 % 2 != 0
	}.sink {
		print($0)
	}
	.store(in: &cancellables)

[1, 1, 2, 3]
	.publisher
	.removeDuplicates()
	.sink {
		print($0)
	}
	.store(in: &cancellables)

let publisher = [1, 1, 2, 3]
	.publisher
	// .mapError { _ in NSError() }
	// .receive(on: DispatchQueue.main)
	.eraseToAnyPublisher()
