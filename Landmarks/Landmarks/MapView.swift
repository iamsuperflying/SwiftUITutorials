//
//  MapView.swift
//  Landmarks
//
//  Created by 李鹏飞 on 2019/8/25.
//  Copyright © 2019 李鹏飞. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {

     func makeUIView(context: Context) -> MKMapView {
           MKMapView(frame: .zero)
       }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
