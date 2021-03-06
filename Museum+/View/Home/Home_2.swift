//
//  Home_2.swift
//  Museum+
//
//  Created by Johnny on 9/11/2021.
//

import SwiftUI

struct Home_2: View {
    @State var modeSelection:Int = UserDefaults.standard.integer(forKey: "mode")

    var body: some View {
        ScrollView{
            VStack(spacing:10){
                HStack{
                    Text("Your coming booking")
                    Spacer()
                }
                if modeSelection == 1{
                    HStack{
                        Text("Space Museum - 13:30")
                            .font(.system(size: 25))
                        Spacer()
                    }
                }
                HStack{
                    Text("Flipbook Machine - 14:00")
                        .font(.system(size: 25))
                    Spacer()
                }
            }
            .padding()
            .background(Color.init("lightGrey"))
            .cornerRadius(10)
            .padding(5)
        
            if modeSelection == 2{

                HStack{
                    NavigationLink {
                        MuseumDetail()
                            .navigationBarTitle("Hong Kong Science Museum")

                    } label: {
                        Text("Current location: ").font(.system(size: 20)) + Text("Space Museum").font(.system(size: 20)).fontWeight(.heavy)

                    }

                }
                .padding()
                .background(Color.init("lightGrey"))
                .cornerRadius(10)
                .padding(5)
            }
            
            ButtonsView()
            
            Text("Show Entrance Ticket")
                .bold()
                .font(.system(size: 20))
                .padding()
                .frame(maxWidth:.infinity)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.vertical,5)

            Text("Show Event Ticket")
                .bold()
                .font(.system(size: 20))
                .padding()
                .frame(maxWidth:.infinity)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.vertical,5)
 
            

        }
        .onAppear {
            modeSelection = UserDefaults.standard.integer(forKey: "mode")
        }
    }
}

struct Home_2_Previews: PreviewProvider {
    static var previews: some View {
        Home_2()
    }
}
