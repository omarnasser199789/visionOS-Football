//
//  XCAFootbalStatsApp.swift
//  XCAFootbalStats
//
//  Created by omer nasser on 19/12/2023.
//

import SwiftUI
let apiKey = "1eba4e1f481b4c8b9dd13e361c40cfce"

@main
struct XCAFootbalStatsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                StandingsTabItemView()
                    .tabItem { Label("Standings", systemImage: "table.fill") }
                
                Text("Top Scorers")
                    .tabItem { Label("Top Scorers", systemImage: "soccerball.inverse") }
            }
            
           
        }
    }
}
