import SwiftUI

struct OTPDemoView: View {
    @State private var code = ""
    @State private var status = ""

    var body: some View {
        Form {
            Section(header: Text("OTP Entry")) {
                SecureField("Enter 6-digit code", text: $code)
                    .keyboardType(.numberPad)

            }

            Button("Verify") {
                verify()
            }

            if !status.isEmpty {
                Section(header: Text("Status")) {
                    Text(status)
                        .foregroundColor(
                            status.contains("success") ? .green : .red
                        )
                        .font(.system(.body, design: .monospaced))
                }
            }
        }
        .navigationTitle("OTP Demo")
    }

    func verify() {
        let realCode = "123456"  // hardcoded for demo
        if code == realCode {
            status = "Verification success ✅"
        } else {
            status = "Verification failed ❌"
        }
    }
}
