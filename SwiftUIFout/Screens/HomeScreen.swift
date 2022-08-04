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
                    Text("Task One")
                }
            }
            .navigationBarTitle("Home", displayMode: .inline)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
