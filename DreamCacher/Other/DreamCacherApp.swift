//
//  DreamCacherApp.swift
//  DreamCacher
//
//  Created by Jason D'Souza on 2024-01-04.
//

import FirebaseCore
import SwiftUI

@main
struct DreamCacherApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

struct Previews_DreamCacherApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
