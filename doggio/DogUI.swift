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
        Text("Hello World")
    }
}

#Preview {
    DogUI(dog : dogs[0])
}
