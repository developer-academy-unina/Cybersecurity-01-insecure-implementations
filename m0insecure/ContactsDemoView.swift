import Contacts
import SwiftUI

struct ContactsDemoView: View {
    @State private var permissionResult = "Not requested yet"

    var body: some View {
        VStack(spacing: 20) {
            Text("Contacts Demo")
                .font(.headline)

            Text("❌ Requests Contacts permission immediately on appear.")

            Text(permissionResult)
                .padding()

            Spacer()
        }
        .padding()
        .navigationTitle("Contacts Demo")
        .onAppear {
            requestContactsNow()
        }
    }

    func requestContactsNow() {
        let store = CNContactStore()
        store.requestAccess(for: .contacts) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    permissionResult = "Contacts access GRANTED"
                } else {
                    permissionResult = "Contacts access DENIED"
                }
                if let error = error {
                    permissionResult = "Error: \(error.localizedDescription)"
                }
            }
        }
    }
}
