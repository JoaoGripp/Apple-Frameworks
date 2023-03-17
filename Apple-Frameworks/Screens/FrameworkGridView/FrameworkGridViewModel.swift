//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Joao Gripp on 16/03/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
