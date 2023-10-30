//
//  HistoryView.swift
//  Neapulse
//
//  Created by Ferdinando Liccardi on 30/10/23.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        
        Image("pulcinella").resizable()
            .aspectRatio(contentMode: .fit).shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        Text("Pulcinella").fontWeight(.semibold)
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque fringilla dolor et est mattis blandit. Maecenas urna augue, tristique id nisl vitae, lobortis cursus ex. Morbi laoreet libero non tellus condimentum suscipit. Nunc molestie vulputate magna id sollicitudin. Aenean faucibus felis sed ligula feugiat tempus. Sed pulvinar, est vitae blandit euismod, diam felis convallis nunc, at efficitur eros felis vel enim. Quisque varius ultrices sapien sit amet pretium. Nam auctor urna sed dapibus ultrices. Sed sit amet magna sed magna porttitor gravida. Etiam mattis cursus risus sed dictum. Donec odio lectus, vehicula ac accumsan aliquet, tempus ac sem. Vivamus vestibulum tellus orci, at blandit nisi ultricies nec. Donec pretium enim sit amet purus aliquet malesuada. Curabitur a odio est. Cras volu¢tpat tristique interdum.").padding(40).foregroundColor(.gray)
    }
}

#Preview {
    HistoryView()
}
