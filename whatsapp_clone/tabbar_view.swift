import SwiftUI

struct tabbar_view: View {
    var body: some View {
        VStack {
            
            HStack {
                TabBarButton(imageName: "message.fill", text: "Sohbetler")
                Spacer()
                TabBarButton(imageName: "circle.fill", text: "Durum")
                Spacer()
                TabBarButton(imageName: "person.3", text: "topluluklar")
                Spacer()
                TabBarButton(imageName: "phone.fill", text: "Aramalar")
            }
            .padding()
            .background(Color.tabbarrenk.opacity(0.8))
           
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TabBarButton: View {
    var imageName: String
    var text: String
    
    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: imageName)
                .font(.title)
                .foregroundColor(.white)
            
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
        }
        .padding(.vertical, 2)
    }
}

#Preview {
    tabbar_view()
}
