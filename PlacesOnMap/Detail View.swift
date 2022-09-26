//
//  Detail View.swift
//  PlacesOnMap
//
//  Created by CHRISTOPHE LEHOUSSINE on 26/09/2022.
//

import SwiftUI

struct Detail_View: View {
    let place: Place
    var body: some View {
        var url = place.url
        
        VStack {
            Text(place.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                //.foregroundColor(Color.)
            Image("pic")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical)
            
            
            Text(place.address)
                .font(.title3)
                
            Text(place.type)
                .italic()
            
            if let sUrl = url  {
                Link("Viste leur site ! ", destination: URL(string: sUrl)!)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                
            }
        }
    }
}

struct Detail_View_Previews: PreviewProvider {
    static var previews: some View {
        Detail_View(place: places[0])
    }
}

