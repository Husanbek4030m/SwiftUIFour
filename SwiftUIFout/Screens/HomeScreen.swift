//
//  HomeScreen.swift
//  SwiftUIFout
//
//  Created by Karavella on 25/06/22.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    TaskOne()
                } label: {
                    Text("Task One").padding(10)
                }
                
                NavigationLink{
                    TaskTwo()
                } label: {
                    Text("Task two").padding(10)
                }
                
                
                NavigationLink{
                    TaskThree()
                } label: {
                    Text("Task three").padding(10)
                }
                
                NavigationLink {
                    TaskFour()
                } label: {
                    Text("Task four").padding(10)
                }
            }
            .navigationBarTitle("Home", displayMode: .inline)
            .navigationBarItems(leading: Image(systemName: "globe"),
                                trailing: Image(systemName: "clock"))
           
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
