class MyClass {
	init(id: Int) {
		print("MyClass with id \(id) initialized")
	}
}

func main() {
	lazy var myClass1 = MyClass(id: 1)

	// lazy var myClass1: MyClass = {
	// 	.init(id: 1)
	// }()

	let myClass2 = MyClass(id: 2)

	print(myClass1)
	print(myClass2)
}

main()
