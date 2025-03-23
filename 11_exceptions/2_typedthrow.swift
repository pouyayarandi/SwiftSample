enum DivideError: Error {
	case divideByZero
}

func divideWithTypedThrow(_ a: Int, by b: Int) throws(DivideError) -> Int {
	if b == 0 {
		throw DivideError.divideByZero
	}
	return a / b
}

do {
	let result = try divideWithTypedThrow(100, by: 0)
	print(result)
} catch {
	print(error)  // error is `DivideError`
}
