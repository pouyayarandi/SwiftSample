import Combine

let numbersPublisher = [1, 2, 3, 4, 5].publisher

// Should be retained, unless it will be removed from memory
numbersPublisher.sink { num in
	print(num)
}

// let cancellable = numbersPublisher.sink { num in
// 	print(num)
// }

// Also, publishers are able to be completed

// numbersPublisher.sink { completion in
// 	print(completion)
// } receiveValue: { num in
// 	print(num)
// }
