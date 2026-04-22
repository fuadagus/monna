//
//  DiscussionView.swift
//  monna
//
//  Created by Fuad Agus Salim on 21/04/26.
//

import SwiftUI

struct DiscussionView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemBackground)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack{
                        DiscussionStatsCardView()
                        
//                            MainCardView()
                       
//                            MainListQAView()
                          
                           
                            
                        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .init(horizontal: .center, vertical: .top))
                            .padding(.horizontal, 20)
                    }.toolbar{
                        
                        ToolbarItem(placement: .navigationBarLeading){
                            Image(systemName: "person.fill")
                        }
                        
                        ToolbarItem(placement: .navigationBarTrailing){
                            NavigationLink(destination: NotificationView()){
                                Image(systemName: "bell.badge")
                            }
                            
                        }
                    }
//                    .padding(20)
                }
            }
        }
}

#Preview {
    DiscussionView()
}
