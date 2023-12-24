//
//  StandingsTabItemView.swift
//  XCAFootbalStats
//
//  Created by omer nasser on 24/12/2023.
//

import SwiftUI
import XCAFootballDataClient

struct StandingsTabItemView: View {
    
    @State var selectedCompetition: Competition?
    
    var body: some View {
        NavigationSplitView {
            List(Competition.defaultCompetitions, id: \.self, selection: $selectedCompetition){
                Text($0.name)
            }.navigationTitle("XCA ⚽️ Standings")
        } detail: {
            if let selectedCompetition {
                StandingsTableView(competition: selectedCompetition)
                    .id(selectedCompetition)
            }else {
                Text("Select a competition")
            }
        }
    }
}

#Preview {
    StandingsTabItemView()
}
