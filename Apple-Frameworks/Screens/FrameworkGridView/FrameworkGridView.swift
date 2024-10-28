//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Donald Pearson on 10/14/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
@StateObject var viewModel = FrameworkGridViewModel()
    

                            
    
    var body: some View {
        
        
        NavigationStack {
            ScrollView {
                
                
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework1 in
                        NavigationLink(value: framework1) {
                            FrameworkTitleView(framework2: framework1)
                        }
                        
                    }
                }
            }
            .foregroundColor(Color(.label))
            .navigationTitle("🍎 FrameWork")
            .navigationDestination(for: Framework.self) { framework3 in
                FrameworkDetailView(frameworkThisView: framework3)
            }
                                   }
        .accentColor(Color(.label))
            
        }

        
    }


#Preview {
    FrameworkGridView()
}

