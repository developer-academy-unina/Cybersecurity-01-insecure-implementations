import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Insecure Demo")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)

                NavigationLink("Login Demo", destination: LoginDemoView())
                NavigationLink("Contacts Demo", destination: ContactsDemoView())
                NavigationLink("Delete Demo", destination: DeleteDemo())
                NavigationLink(
                    "Token Storage Demo",
                    destination: TokenStorageDemo()
                )
                NavigationLink(
                    "One-Time Password Demo (device)",
                    destination: OTPDemoView()
                )

                Spacer()
            }
            .padding()
            .navigationTitle("Security UX Demos")
        }
    }
}

#Preview {
    ContentView()
}
