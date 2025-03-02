
class Contact {
    let email: String

    init(email: String) {
        self.email = email
    }

    init(userName: String) {
        self.email = "\(userName)@example.com"
    }

    func sendMail() {
        print("send mail to \(email)")
    }
}

let contact = Contact(email: "me@example.com")
contact.sendMail()
