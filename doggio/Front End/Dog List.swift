//
//  Dog List.swift
//  doggio
//
//  Created by Jeffrey Sheets on 10/10/23.
//

import SwiftUI

struct Dog_List: View {
    var body: some View {
        List(dogs){ dog in
            DogUI(dog: dog)
        }
        
    }
}

#Preview {
    Dog_List()
}
