enum DivideError: Error {
	case divideByZero
}

func divide(_ a: Int, by b: Int) throws -> Int {
	if b == 0 {
		throw DivideError.divideByZero
	}
	return a / b
}

do {
	let result = try divide(100, by: 0)
	print(result)
} catch {
	print(error)  // error is `Error`, compiler does not recognize it as `DivideError`
}

do {
	let result = try divide(100, by: 0)
	print(result)
} catch let error as DivideError {
	print(error)  // error is `DivideError`
} catch {
	// catch block is always needed as error might be anything else.
}
