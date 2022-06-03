//
//  TutorsApp.swift
//  Tutors
//
//  Created by Ilya Sokolov on 01.06.2022.
//

import SwiftUI

@main
struct TutorsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(tutors: testData)
        }
    }
}
