//
//  ContentView.swift
//  doggio
//
//  Created by Jeffrey Sheets on 10/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Rectangle()
            .frame(height: 120.0)
            .offset(y : -340)
            .foregroundColor(.blue)
        
        VStack {
                
            Text("Doggio")
                .font(.title)
                .foregroundColor(Color.white)
            Text("An App for Dog Owners By Dog Owners")
            
                
        }
        .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
        .offset(y : -420)
        Button(action: {}){
            Text("Add Dog")
                
        }
    }
}

#Preview {
    ContentView()
}
