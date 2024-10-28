//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Donald Pearson on 10/26/24.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    var body: some View {
        Text(title)
            .frame(width: 200, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .font(.title2)
            .fontWeight(.semibold)
            .cornerRadius(15)
        
        
    }
}

#Preview {
    AFButton(title: "Test Title")
}
