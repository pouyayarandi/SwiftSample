await withTaskGroup(of: Void.self) {

	for i in 1...3 {
		$0.addTask {
			try? await Task.sleep(for: .seconds(1))
			print("Task \(i) completed")
		}
	}

	await $0.waitForAll()

	print("Done")
}
