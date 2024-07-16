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

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    let image: MyImage
    var body: some View {
        Image(image.imageName)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            .toolbar {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .font(.title)
                        .foregroundStyle(.white)
                }
            }
    }
}

#Preview {
    NavigationStack{
        DetailView(image: MyImage.samples[0])
    }
}
