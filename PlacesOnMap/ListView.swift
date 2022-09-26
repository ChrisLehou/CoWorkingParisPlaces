//
//  ListView.swift
//  PlacesOnMap
//
//  Created by CHRISTOPHE LEHOUSSINE on 26/09/2022.
//

import SwiftUI

struct ListView: View {
    
    
    var body: some View {
        NavigationView {
            List(places) { place in
                NavigationLink {
                    Detail_View(place: place)
                } label: {
                    Text(place.name)
                }
            }.ignoresSafeArea(.all)
            .navigationBarTitle("Nos CoWorking")
            .padding(.vertical)
        }
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
