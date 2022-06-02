//
//  TutorDetail.swift
//  Tutors
//
//  Created by Ilya Sokolov on 02.06.2022.
//

import SwiftUI

struct TutorDetail: View {
    
    var name: String
    var headline: String
    var bio: String
    
    
    
    var body: some View {
        VStack {
            Image(name)
            // круглые рамки 
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.orange, lineWidth: 4))
                .shadow(radius: 10)
            
            
            Text(name)
                .font(.title)
                .padding()
                .frame(width: 0.0, height: 1.0)
                
            Text(headline)
                .font(.subheadline)
                .multilineTextAlignment(.center)
            Divider()
                
            Text(bio)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .lineLimit(50)
        } .padding(50).navigationTitle(Text(name))
    }
}
#if DEBUG
struct TutorDetail_Previews: PreviewProvider {
    static var previews: some View {
        TutorDetail(name: "", headline: "", bio: "")
    }
}
#endif
