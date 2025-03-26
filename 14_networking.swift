import Foundation

// Define response model
struct GitHubUser: Codable {
	let id: Int
	let name: String
	let bio: String
	let company: String
}

// Define dependencies for making network request
let session = URLSession.shared
let decoder = JSONDecoder()

// Fetch data using `URLSession` and decode using `JSONDecoder`
func getUserInfo(_ username: String) async throws -> GitHubUser {
	let url = URL(string: "https://api.github.com/users/\(username)")!
	var request = URLRequest(url: url)
	request.httpMethod = "GET"

	let (data, _) = try await session.data(for: request)
	return try decoder.decode(GitHubUser.self, from: data)
}

do {
	try await print(getUserInfo("pouyayarandi"))
} catch {
	print(error)
}
