func waitForAWhile(completion: () -> Void) {
	for _ in 0..<5_000_000 {
		print("", terminator: "")
	}
	completion()
}

// Create an async version of above function
func waitForAWhile() async {
	await withUnsafeContinuation { continuation in
		waitForAWhile {
			continuation.resume()
		}
	}
}

waitForAWhile {
	print("Waiting finished")
}

await waitForAWhile()
print("Async waiting finished")
