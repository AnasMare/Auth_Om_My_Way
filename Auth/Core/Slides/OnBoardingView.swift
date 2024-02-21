import SwiftUI

struct Slide: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
}

struct OnboardingView: View {
    private let slides = [
        Slide(imageName: "Onboarding1", title: "Lorem", description: "Welcome to the onboarding screen!"),
        Slide(imageName: "Onboarding2", title: "Slide 2", description: "This is the second slide."),
        Slide(imageName: "Onboarding3", title: "Slide 3", description: "This is the third slide.")
    ]
    
    @State private var currentPageIndex = 0
    
    var body: some View {
        NavigationStack{
            VStack {
                
                TabView(selection: $currentPageIndex) {
                    ForEach(0..<3) { index in
                        HStack {
                            SlideView(slide: slides[index])
                                .tag(index)
                        }
                    }
                }
                
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                
                HStack {
                    NavigationLink(destination: LoginView()) {
                        Text("Skip")
                    }
                    .padding()
                    
                    Spacer()
                    if currentPageIndex == slides.count - 1{
                        NavigationLink{
                            LoginView()
                        } label: {
                            Text("Get Started")
                        }.isDetailLink(false)
                            .padding()
                    } else{
                        Button(action: {
                            currentPageIndex += 1}
                        ) {
                            Text("Next")
                        }
                        .padding()
                        .disabled(currentPageIndex == slides.count)
                    }
                    
                }
            }
        }
    }
    
    

}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
