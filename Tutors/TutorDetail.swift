//
//  TutorDetail.swift
//  Tutors
//
//  Created by Ilya Sokolov on 02.06.2022.
//

import SwiftUI

struct TutorDetail: View {
    var body: some View {
        VStack {
            Image("Simon Ng")
            // круглые рамки 
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.orange, lineWidth: 4))
                .shadow(radius: 10)
            
            
            Text("Simon Ng")
                .font(.title)
            
            
        }
    }
}

struct TutorDetail_Previews: PreviewProvider {
    static var previews: some View {
        TutorDetail()
    }
}
