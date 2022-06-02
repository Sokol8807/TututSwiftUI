//
//  ContentView.swift
//  Tutors
//
//  Created by Ilya Sokolov on 01.06.2022.
//

import SwiftUI

struct ContentView: View {
    var  tutors: [Tutor] = []
    
    var body: some View {
        
        NavigationView {
            
        List(tutors) { tutor in
            TutorCell(tutor: tutor)
        }.navigationBarTitle(Text("Tutors"))
    }
}
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}
#endif

struct TutorCell: View {
    let tutor: Tutor
    var body: some View {
        NavigationLink(destination: Text(tutor.headline)) {
            HStack(){
                Image(tutor.imageName)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(tutor.name)
                    Text(tutor.headline)
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
            }
        }
        
    }
}
