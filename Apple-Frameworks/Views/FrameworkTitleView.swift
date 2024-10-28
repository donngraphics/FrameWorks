//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Donald Pearson on 10/26/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework2: Framework
    
    var body: some View {
        //    let name: String
        //    let imageName: String
     
           
                
                VStack {
                    Image(framework2.imageName)
                        .resizable()
                        .frame(width: 90, height: 90)
                    Text(framework2.name)
                        .foregroundColor(Color(.label))
                        .font(.title2)
                        .fontWeight(.semibold)
                        .scaledToFit()
                        .minimumScaleFactor(0.6)
                    
                }
                .padding()
           
        }

}

#Preview {
    FrameworkTitleView(framework2: MockData.sampleFramework)
}
