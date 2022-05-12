//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Carlos Corvalan on 5/3/22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var store = ScrumStore()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums)
            }
            .onAppear {
                ScrumStore.load { result in
                    switch result {
                    case .failure(let error):
                        fatalError(error.localizedDescription)
                    case .success(let scrums):
                        store.scrums = scrums
                    }
                }
            }
        }
    }
}
