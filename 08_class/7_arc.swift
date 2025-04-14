// ARC: (A)utomatic (R)eference (C)ounting

class A {
	var b: B?

	deinit {
		print("Class A: deinit!")
	}
}

class B {
	// make this reference weak!
	var a: A?

	deinit {
		print("Class B: deinit!")
	}
}

func main() {
	let a = A()
	let b = B()

	a.b = b
	b.a = a
}

main()
