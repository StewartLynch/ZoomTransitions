//
// ----------------------------------------------
// Original project: ZoomTransitions
// by  Stewart Lynch on 2024-07-16
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
// ----------------------------------------------
// Copyright © 2024 CreaTECH Solutions. All rights reserved.


import SwiftUI

struct DetailView2: View {
    let image: MyImage
    let transitionNamespace: Namespace.ID
    @State private var showFull = false
    var body: some View {
        VStack {
            Image(image.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 10)
                .matchedTransitionSource(id: image, in: transitionNamespace)
                .onTapGesture {
                    showFull.toggle()
                }
                .fullScreenCover(isPresented: $showFull) {
                    NavigationStack {
                        DetailView(image: image)
                    }
                        .navigationTransition(.zoom(sourceID: image, in: transitionNamespace))
                }
            Text(image.name)
                .font(.title)
            Text(image.info)
            Spacer()
        }
        .navigationTransition(.zoom(sourceID: image, in: transitionNamespace))
        .padding()
    }
}

#Preview {
    @Previewable @Namespace var transitionNamespace
    DetailView2(image: MyImage.samples[6], transitionNamespace: transitionNamespace)
}
