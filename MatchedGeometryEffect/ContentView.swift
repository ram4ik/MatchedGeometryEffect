//
//  ContentView.swift
//  MatchedGeometryEffect
//
//  Created by ramil on 08.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isClicked: Bool = false
    @Namespace private var nameSpace
    
    var body: some View {
        VStack {
            
            if !isClicked {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 100, height: 100)
                    .matchedGeometryEffect(id: "rectangle", in: nameSpace)
            }
            
            
            Spacer()
            
            if isClicked {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 100, height: 100)
                    .matchedGeometryEffect(id: "rectangle", in: nameSpace)
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .onTapGesture {
            withAnimation(.easeInOut) {
                isClicked.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
