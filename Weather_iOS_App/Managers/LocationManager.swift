//
//  LocationManager.swift
//  Weather_iOS_App
//
//  Created by Koulik Maity on 21/07/23.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject , CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init(){
        super.init()
        manager.delegate = self
    }
    
    func requestLocation(){
        isLoading = true
        manager.requestLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false // because we got location that mean loading is completed
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error getting loacation", error)
        isLoading = false
    }
    
}
