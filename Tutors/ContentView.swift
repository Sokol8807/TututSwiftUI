//
//  ContentView.swift
//  Tutors
//
//  Created by Ilya Sokolov on 01.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0 ..< 5) { item in
            
            HStack(){
                Image(systemName: "photo")
                VStack(alignment: .leading) {
                    Text("Ilay Sokolov")
                    Text("iOS Developer")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
