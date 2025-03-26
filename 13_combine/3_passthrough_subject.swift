import Combine

let subject = PassthroughSubject<Int, Never>()

// Start observing subject emitted values
let c = subject.sink {
	print($0)
}

subject.send(1)
subject.send(2)
subject.send(3)
