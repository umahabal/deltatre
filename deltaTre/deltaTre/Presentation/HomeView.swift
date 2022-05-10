//
//  HomeView.swift
//  deltaTre
//
//  Created by URM on 25/04/22.
//

import SwiftUI

struct HomeView: View {
    
    var moviesStrings = ["Batman", "Superman", "Spiderman", "Deadpool", "Batman", "Superman", "Spiderman", "Deadpool", "Batman", "Superman", "Spiderman", "Deadpool"]
    
    
    var seriesStrings = ["Batman", "Superman", "Spiderman", "Deadpool"]
    var all1: [String] = []
    
    let watchaginCovers = ["Batman", "Superman", "Spiderman"]
    var covers1: [String] = []
    var covers2: [String] = []
    var covers3: [String] = []
    
    
    init() {
        self.all1 = moviesStrings + seriesStrings
        
        self.covers1 = moviesStrings
        self.covers2 = seriesStrings
        self.covers3 = all1.shuffled()
    }
    
    
    var body: some View {
        GeometryReader{ screenSize in
            ZStack {
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 30) {
                        
                        
                        MoviesView(titleString: "watch Again", coverString: watchaginCovers)
                        
                        MoviesView(titleString: "Movies", coverString: covers1)
                        
                        MoviesView(titleString: "Series", coverString: covers2)
                        
                        MoviesView(titleString: "All", coverString: covers3)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
