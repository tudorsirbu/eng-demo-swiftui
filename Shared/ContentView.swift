//
//  ContentView.swift
//  Shared
//
//  Created by Tudor Sirbu on 13/07/2021.
//

import SwiftUI

struct ContentView: View {
    var booking: Booking
    
    var body: some View {
        VStack {
            
            Button(action: {
                // todo increase booking price by £10 with each tap
            }, label: {
                Image(systemName: "sterlingsign.circle")
                Text("Charge \(booking.student.firstName) more")
            })
            .foregroundColor(.white)
            .padding()
            .background(Color("Blue"))
            .cornerRadius(6.0)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Theme.petrolBlue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(booking: DummyData.booking)
    }
}
