@propertyWrapper
struct Logger {
	var wrappedValue: String {
		didSet {
			print("new value: '\(wrappedValue)', old value: '\(oldValue)'")
		}
	}
}

func main() {
	@Logger var name = ""
	name = "ali"  // prints: new value: 'ali', old value: ''
}

main()
