//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Donald Pearson on 10/23/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var frameworkThisView: Framework
    
    @State private var isShowingSafariView = false
    
    var body: some View {
    
  
        VStack {
            
//            HStack{
//             Spacer()
//                Button {
//                    isShowingDetailView = false
//                    
//                }
//            label: {
//                Image(systemName: "xmark")
//                    .foregroundColor(Color(.label))
//                    .imageScale(.large)
//                    .frame(width: 44, height: 44)
//            }
//            .padding()
//            }
//            
            
            
            
            Spacer()
            FrameworkTitleView(framework2: frameworkThisView)
            Text(frameworkThisView.description)
                .font(.body)
                .padding()

            Spacer()
            
            Button() {
                print("I fucking hate myself and my life")
                isShowingSafariView = true
            }
        label: {
            AFButton(title: "Learn More")
//            Text("Learn More")
//                .frame(width: 200, height: 50)
//                .background(.red)
//                .foregroundColor(.white)
//                .font(.title2)
//                .fontWeight(.semibold)
//                .cornerRadius(15)
            
            
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: frameworkThisView.urlString) ?? URL(string: "http://donngraphics.com")!)
            //SafariView(url: URL(string: "http://donngraphics.com")!)
        })
            
        }
        
//        VStack{
//            Spacer()
//            Image("swiftui")
//                .resizable()
//                .frame(width: 100, height: 100)
//                .padding([.bottom], 10)
//            Text("SwiftUI")
//                .font(.title2)
//                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                .padding([.bottom], 20)
//            Text("""
//Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
//
//Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
//
//Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
//""")
//            .padding()
//            .fontWeight(.semibold)
//           Spacer()
//            
//            Button() {
//print("I fucking hate myself and my life")
//            }
//            label: {
//                Text("Learn More")
//                    .frame(width: 200, height: 50)
//                    .background(.red)
//                    .foregroundColor(.white)
//                    .font(.system(size: 20, weight: .bold, design: .default))
//                    .cornerRadius(15)
//                
//        }
//
//        }
        
        
    }
}

#Preview {
    FrameworkDetailView(frameworkThisView: MockData.sampleFramework)
                    
                    
                
}
