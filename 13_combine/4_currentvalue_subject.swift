import Combine

let subject = CurrentValueSubject<Int, Never>(0)

// Start observing subject emitted values
// Once observation starts, current value
// will be received first.
let c = subject.sink {
	print($0)
}

subject.send(1)
subject.send(2)
subject.send(3)

print("value:", subject.value)
