//
//  DogUI.swift
//  doggio
//
//  Created by Jeffrey Sheets on 10/10/23.
//

import SwiftUI

struct DogUI: View {
    var dog: Dog
    var body: some View {
        VStack{
            if(dog.gender == "female"){
                Text(dog.name)
                    .foregroundColor(Color(hue: 0.879, saturation: 0.326, brightness: 0.922))
            }
            else{
                Text(dog.name)
                    .foregroundColor(Color.blue)
            }
            Text(String(dog.age) + " Years Old")
            Text(dog.breed)
        }
        
    }
}


#Preview {
    DogUI(dog: dogs[0])
}
