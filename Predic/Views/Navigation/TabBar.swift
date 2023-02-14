//
//  TabBar.swift
//  Predic
//
//  Created by JonathanTriC on 14/02/23.
//

import SwiftUI

struct TabBar: View {
    var action: () -> Void
    
    var body: some View {
        ZStack {
            // MARK: Arc Shape
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 88)
                .overlay {
                    Arc()
                        .stroke(Color.tabBarBorder, lineWidth: 0.5)
                }
            
            Plus()
                .fill(Color.tabBarPlus)
                .frame(width: 258 ,height: 100)
                .offset(y: -6)
                .overlay {
                    Plus()
                        .stroke(Color.tabBarBorder, lineWidth: 0.5)
                        .offset(y: -6)
                }
            
            Image("plus")
                .resizable()
                .frame(width: 120, height: 120)
                .offset(y: -6)
            
            
            // MARK: Tab Items
            HStack {
                // MARK: Expand Button
                Button {
                    action()
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44)
                }
                
                Spacer()
                
                // MARK: Navigation Button
                NavigationLink {
                    
                } label: {
                    Image(systemName: "list.star")
                        .frame(width: 44, height: 44)
                }
            }
            .font(.title2)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 20, leading: 32, bottom: 24, trailing: 32))
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .offset(y: 20)
        .ignoresSafeArea()
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(action: {})
            .preferredColorScheme(.dark)
    }
}
