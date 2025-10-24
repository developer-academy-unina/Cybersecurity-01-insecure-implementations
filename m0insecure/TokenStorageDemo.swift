import SwiftUI

struct TokenStorageDemo: View {
    @State private var token: String = ""
    @State private var savedToken: String? = nil

    var body: some View {
        VStack(spacing: 20) {

            TextField("Enter token", text: $token)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)

            Button("Save Token") {
                // ❌ Insecure: saves token in UserDefaults (.plist file)
                UserDefaults.standard.set(token, forKey: "authToken")
                savedToken = UserDefaults.standard.string(forKey: "authToken")
            }
            .buttonStyle(.borderedProminent)

            if let saved = savedToken {
                VStack(spacing: 8) {
                    Text("Saved token: \(saved)")
                        .font(.subheadline)
                        .foregroundColor(.red)

                    // Show the command string right in the app
                    Text(
                        """
                        Run in Terminal to see the plist:
                        ls -la ~/Library/Developer/CoreSimulator/Devices/<DeviceUUID>/data/Containers/Data/Application/<AppUUID>/Library/Preferences
                        """
                    )
                    .font(.system(.caption, design: .monospaced))
                    .multilineTextAlignment(.leading)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                }
            } else {
                Text("No token currently stored.")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }

            Spacer()
        }
        .padding()
        .navigationTitle("Token Storage (Insecure)")
        .onAppear {
            // Load any existing token from UserDefaults
            savedToken = UserDefaults.standard.string(forKey: "authToken")
        }
    }
}
