import SwiftUI

struct DeleteDemo: View {
    @State private var status = ""

    var body: some View {
        VStack(spacing: 20) {

            Button("Delete Account") {
                // ❌ Immediately deletes with no confirmation
                status = "Account deleted ❌"
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)

            Text(status)
                .foregroundColor(.red)

            Spacer()
        }
        .padding()
        .navigationTitle("Delete Demo")
    }
}

#Preview {
    DeleteDemo()
}
