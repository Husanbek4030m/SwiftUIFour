//
//  TaskFour.swift
//  SwiftUIFout
//
//  Created by Karavella on 04/08/22.
//

import SwiftUI

struct TaskFour: View {
    @State private var showAlert = false
    @State var showSheet = false
    
    
    var body: some View {
       
        TabView {
            Button(action: {
                self.showAlert = true
            }, label: {
                Text("Show alert")
            }).alert(isPresented: $showAlert, content: {
                let title = "Logut"
                let msg = "You have logout?"
                
                return Alert(title: Text(title), message: Text(msg), primaryButton: .destructive(Text("No")), secondaryButton: .default(Text("Yes")))
            })  .font(.title)
                .tabItem({
                    Image(systemName: "clock")
                    Text("Alert")
                })
                .tag(0)
            
            
            Button(action: {
                self.showSheet = true
            }, label: {
                Text("Show confirm")
            }).actionSheet(isPresented: $showSheet, content: {
                let title = "Action"
                let msg = "Description"
                
                return ActionSheet(title: Text(title), message: Text(msg), buttons: [
                    .default(Text("Yes")),
                    .destructive(Text("No"))
                ])
            })
                .font(.title)
                .tabItem({
                    Image(systemName: "bell")
                    Text("Confirm")
                })
                .tag(1)
            
        }
        
    }
}

struct TaskFour_Previews: PreviewProvider {
    static var previews: some View {
        TaskFour()
    }
}
