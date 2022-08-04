//
//  DetailView.swift
//  SwiftUIFout
//
//  Created by Karavella on 04/08/22.
//

import SwiftUI

struct DetailView: View {
     var image = ""
     var desc = ""
    @Environment(\.presentationMode) var pr
    
    var body: some View {
        NavigationView {
            VStack {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(desc).padding()
            }
            .navigationTitle("Detail data")
            .navigationBarItems(trailing: HStack {
                Button {
                    pr.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                }
            }
            )
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
