//
//  DiscussionStatsCardView.swift
//  monna
//
//  Created by Fuad Agus Salim on 22/04/26.
//

import SwiftUI

struct DiscussionStatsCardView: View {
    @State private var question : String = ""
    var body: some View {
        VStack{
            
            RoundedRectangle(cornerRadius: 20)
            
            
                .fill(Color(UIColor.mainCardColorBlue))
                .frame(maxWidth: .infinity, maxHeight: 200, alignment: Alignment(horizontal: .leading, vertical: .top))
                    .scaledToFit()
                .overlay {
                    //                                    Title, Sub and The Q
                    VStack{
                        Text("Discussion").frame(maxWidth: .infinity, alignment: .leading).font(.title).bold().foregroundColor(Color.white)
                        Text("Find yours").bold().frame(maxWidth: .infinity, alignment: .leading).foregroundColor(Color.white)
                        
                        HStack{
                            StatsView(isActive: true)
                            StatsView(isActive: false)
                        }.foregroundColor(Color.white)

                      
                        
                    }
                    .padding(24)
//                    .background(Color.black)
               
                }
        }
    }
}

#Preview {
    DiscussionStatsCardView()
}
