//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Carlos Corvalan on 5/3/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: DailyScrum.sampleData)
            }
        }
        
    }
}
