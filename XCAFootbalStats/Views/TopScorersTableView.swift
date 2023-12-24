//
//  TopScorersTableView.swift
//  XCAFootbalStats
//
//  Created by omer nasser on 24/12/2023.
//

import SwiftUI
import XCAFootballDataClient

struct TopScorersTableView: View {
    let competition: Competition
    @Bindable var vm = TopScorersTableObservable()
    
    var body: some View {
        Table(of: Scorer.self){
            TableColumn("Pos") { scorer in
                HStack{
                    Text(scorer.posText).fontWeight(.bold)
                        .frame(minWidth: 20)
                }
            }.width(min: 264)
        } rows: {
            ForEach(vm.scorers ?? []){
                TableRow($0)
            }
        }
            .navigationTitle(competition.name + " top scorers")
    }
}

#Preview {
    NavigationStack{
        TopScorersTableView(competition: .defaultCompetitions[1])
    }
  
}
