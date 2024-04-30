//
//  ContentView.swift
//  FigmaToCode
//
//  Created by Atikur Rahman on 4/30/24.
//

import SwiftUI

struct ContentView: View {
    /*
    // Find out actual font name from a custom font
    init() {
        for fontFamily in UIFont.familyNames {
            //print("Font family name: \(fontFamily)")
            for font in UIFont.fontNames(forFamilyName:fontFamily) {
                print("Actual font name: \(font)")
            }
        }
    }
    */
    
    var body: some View {
        
        TabView {
            
            TaskListView()
                .tabItem { Image("ic-tasklist") }
            
            CalendarView()
                .tabItem { Image("ic-calendar") }
            
            ReminderView()
                .tabItem { Image("ic-reminder") }
            
            SettingsView()
                .tabItem { Image("ic-settings") }
        }
    }
}

#Preview {
    ContentView()
}
