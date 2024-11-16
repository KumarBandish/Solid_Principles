//
//  ContentView.swift
//  Solid_Principles
//
//  Created by Bandish Kumar on 16/11/24.
//

import SwiftUI

enum GenderType{
    static let m = "Male"
    static let f = "Female"
}
struct ContentView: View {
    
    var body: some View {
        VStack {
            let userDetails = getUserData()
            
            ForEach(userDetails, id: \.name) { userDetail in
                Label(title: {
                    Text(userDetail.name)
                        .font(.headline)
                        .foregroundStyle(Color.black)
                        .fontWeight(.bold)
                        .font(.title2)
                }, icon: {
                    userDetail.gender == GenderType.m ?
                    Image(systemName: "person.crop.circle.fill") :  Image(systemName: "person.crop.circle.fill.badge.checkmark")
                   
                        
                })
                .padding()
                .fontWeight(.medium)
                .foregroundColor(.red)
                
            }
            .padding()
        }
    }
    
    func getUserData() -> [User] {
        return [User(name: "Bandish", age: 30, gender: "Male"), User(name: "Shivani", age: 27, gender: "Female")]
    }
}



#Preview {
    ContentView()
}
