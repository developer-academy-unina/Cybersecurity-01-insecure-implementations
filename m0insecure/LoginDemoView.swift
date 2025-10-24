import SwiftUI

struct LoginDemoView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var errorMessage: String?

    var body: some View {
        Form {
            Section(header: Text("Login")) {
                TextField("Email", text: $email)
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)

                // ❌ Password is visible (insecure)
                TextField("Password", text: $password)
            }

            Button("Login") {
                login()
            }

            if let error = errorMessage {
                Section(header: Text("Error")) {
                    Text(error)
                        .foregroundColor(.red)
                        .font(.system(.body, design: .monospaced))
                }
            }
        }
        .navigationTitle("Login Demo")
    }

    func login() {
        // Hardcoded "real" account for demo
        let realEmail = "user@example.com"
        let realPassword = "Password123"

        if email != realEmail {
            // ❌ Insecure: leaks account existence
            errorMessage = "Email not found"
        } else if password != realPassword {
            // ❌ Insecure: distinguishes wrong password
            errorMessage = "Incorrect password"
        } else {
            errorMessage = nil
            // pretend login success
        }
    }
}
