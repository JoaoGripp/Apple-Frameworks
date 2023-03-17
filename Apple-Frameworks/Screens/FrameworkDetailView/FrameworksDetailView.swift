//
//  FrameworksDetailView.swift
//  Apple-Frameworks
//
//  Created by Joao Gripp on 16/03/23.
//

import SwiftUI

struct FrameworksDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

struct FrameworksDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
