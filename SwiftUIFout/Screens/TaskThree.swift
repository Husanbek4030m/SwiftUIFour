//
//  TaskThree.swift
//  SwiftUIFout
//
//  Created by Karavella on 04/08/22.
//

import SwiftUI

struct TaskThree: View {
    var body: some View {
        TabView {
            Image("walpaper1")
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Image("wallpaper2")
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Image("003")
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Image("004")
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct TaskThree_Previews: PreviewProvider {
    static var previews: some View {
        TaskThree()
    }
}
