//
//  MainView.swift
//  PlacesOnMap
//
//  Created by CHRISTOPHE LEHOUSSINE on 26/09/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
           TabView {
               ListView()
                   .tabItem {
                       Label("Liste", systemImage: "list.dash")
                   }

               PlacesMapView()
                   .tabItem {
                       Label("Carte", systemImage: "map.circle")
                   }
           }
       }
   }
