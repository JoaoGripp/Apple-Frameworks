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
    
    var body: some View {
        VStack {
            
            HStack {
                
                Spacer()
                
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 40, height: 40)
                }
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

struct FrameworksDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    }
}
