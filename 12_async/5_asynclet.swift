import Foundation

func getFirstWord() async -> String {
	print("Start getting first word")
	var result = ""
	for c in ["H", "e", "l", "l", "o"] {
		try? await Task.sleep(for: .milliseconds(500))
		result += c
	}
	return result
}

func getSecondWord() async -> String {
	print("Start getting second word")
	var result = ""
	for c in ["W", "o", "r", "l", "d"] {
		try? await Task.sleep(for: .milliseconds(500))
		result += c
	}
	return result
}

func printSentenceSerially() async {
	let start = Date.now
	let first = await getFirstWord()
	let second = await getSecondWord()
	let sentence = "\(first) \(second)"
	print(sentence)
	print("duration:", start.distance(to: .now))
}

func printSentenceConcurrently() async {
	let start = Date.now
	async let first = getFirstWord()
	async let second = getSecondWord()
	let sentence = await "\(first) \(second)"
	print(sentence)
	print("duration:", start.distance(to: .now))
}

await printSentenceSerially()
// await printSentenceConcurrently()
