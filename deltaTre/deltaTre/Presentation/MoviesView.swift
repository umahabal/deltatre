//
//  MoviesView.swift
//  deltaTre
//
//  Created by URM on 24/04/22.
//

import SwiftUI

struct MoviesView: View {
    
    var titleString: String
    var coverString: [String]
    
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        VStack(alignment: .leading, content:{
            Text(titleString)
                .font(.system(size:22, weight: .bold, design: .rounded))
                .foregroundColor(.black)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing:15) {
                    ForEach(coverString, id: \.self) { coverstring in
                        Image(coverstring)
                            .resizable()
                            .frame(width: 140, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                    }
                }
                .padding()
            }
        })
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView(titleString: "MyView", coverString: ["MyView"])
    }
}
