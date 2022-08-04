//
//  TaskOne.swift
//  SwiftUIFout
//
//  Created by Karavella on 26/06/22.
//

import SwiftUI

struct TaskOne: View {
    @Environment(\.presentationMode) var pr
    
    let arr: [PhotoModels] = [
        PhotoModels(image: "001", counter: 2, description: "Toglarni rasmi "),
        PhotoModels(image: "002", counter: 10, description: "Abstrak rasm"),
        PhotoModels(image: "003", counter: 2, description: "Alp toglari rasmi "),
        PhotoModels(image: "004", counter: 10, description: "Daryo rasm"),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 8) {
                    ForEach(arr, id: \.self) { item in
                        Image(item.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }.padding(8)
            }.toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Image(systemName: "globe")
                    Image(systemName: "clock")
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        pr.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                    }

                }
            }.navigationBarTitle("Photo", displayMode: .inline)
                
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
}

struct TaskOne_Previews: PreviewProvider {
    static var previews: some View {
        TaskOne()
    }
}
