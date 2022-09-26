////
////  PlacesMapView.swift
////  PlacesOnMap
////
////  Created by CHRISTOPHE LEHOUSSINE on 26/09/2022.
//

import SwiftUI
import MapKit

struct PlacesMapView: View {
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.866667, longitude: 2.333333), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))

    
    
    var body: some View {
        
        NavigationView {
            
            Map(coordinateRegion: $mapRegion, annotationItems: places) { place in
                
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.lat, longitude: place.lon)) {
                    NavigationLink {
                        Detail_View(place: place)
                    } label: {
                      //  Text(place.name)
                        Image(systemName: "mappin")
                            .foregroundColor(.red)
                    }
                    
                }
            }
        }
    }
}

struct PlacesMapView_Previews: PreviewProvider {
    static var previews: some View {
        PlacesMapView()
    }
}


