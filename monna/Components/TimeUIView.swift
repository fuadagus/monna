//
//  TimeUIView.swift
//  monna
//
//  Created by Fuad Agus Salim on 22/04/26.
//

import SwiftUI

struct TimeUIView: View {
    var time: Int = 1
    var timeString: String = ""

    
    @ViewBuilder
    var body: some View {
        HStack{
 
            if time <= 1 {
               Text("Just now")
            } else if ( time <= 60) {
                Text("\(time) minutes ago")
            } else if (time <= 24*60) {
                Text("\(time/60) hours ago")
            } else if (time <= 7*24*60) {
                Text("\(time/60/24) weeks ago")
            } else if  (time <= 4*7*24*60) {
                Text("\(time/60/24/7) months ago")
            }

        }
    }
}

#Preview {
    TimeUIView()
}
