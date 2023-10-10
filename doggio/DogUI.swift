//
//  DogUI.swift
//  doggio
//
//  Created by Jeffrey Sheets on 10/10/23.
//

import SwiftUI

struct DogUI: View {
    var dog : Dog
    var body: some View {
        VStack{
            Text(dog.name)
                .font(.title)
            HStack{
                Text("Age:")
                Text(String(dog.age))
            }
            .font(.title2)
            HStack{
                Text("Weight:")
                Text(String(dog.weight))
                Text("lbs")
            }
            .font(.title2)
        }
    }
}

#Preview {
    DogUI(dog : dogs[0])
}
