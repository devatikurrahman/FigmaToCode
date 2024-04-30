//
//  TaskListView.swift
//  FigmaToCode
//
//  Created by Atikur Rahman on 4/30/24.
//

import SwiftUI

struct TaskListView: View {
    var body: some View {
        
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image("ic-menu")
            }
            
            ToolbarItem(placement: .principal) {
                Text("Today")
                    .font(.navTitle)
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Image("ic-more")
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    TaskListView()
}
