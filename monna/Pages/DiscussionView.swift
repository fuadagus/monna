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
                        
                        Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                            /*@START_MENU_TOKEN@*/Text("1").tag(1)/*@END_MENU_TOKEN@*/
                            /*@START_MENU_TOKEN@*/Text("2").tag(2)/*@END_MENU_TOKEN@*/
                        }.pickerStyle(SegmentedPickerStyle())
                        
                        VStack{
                            
                        }
                        
//
//                        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
//                            Text("Tab Content 1").tabItem {
//                                Text("My Questions")
//                            }.tag(1)
//                            Text("Tab Content 2").tabItem {
//                                Text("My Answers")
//                            }.tag(2)
//                        }.frame(maxWidth: .infinity)
//
//

                            
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
