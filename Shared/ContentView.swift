//
//  ContentView.swift
//  Shared
//
//  Created by Tudor Sirbu on 13/07/2021.
//

import SwiftUI

struct ContentView: View {
    @State var booking: Booking
    
    var body: some View {
        VStack {
            
            HStack {
                Image("StudentAvatar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(maxWidth: 80)
                
                Text(booking.student.firstName)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
            }
            
            Text(booking.subject)
                .font(.callout)
                .foregroundColor(Color.white)
                .padding()
            
            HStack {
                Text(booking.startTime, style: .date)
                    .foregroundColor(.white)
                    .padding()
                
                Text(booking.startTime, style: .time)
                    .foregroundColor(.white)
                    .padding()
                
                Text("£\(booking.price)")
                    .foregroundColor(.white)
            }
            
            Button(action: {
                // todo increase booking price by £10 with each tap
                self.booking.price += 10
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
