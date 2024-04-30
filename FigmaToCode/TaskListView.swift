//
//  TaskListView.swift
//  FigmaToCode
//
//  Created by Atikur Rahman on 4/30/24.
//

import SwiftUI

struct TaskListView: View {
    
    var tasks = Task.getMockTasks()
    
    var body: some View {
        
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    HStack {
                        Text("Today")
                        Spacer()
                        Text("\(tasks.count)")
                        Image("ic-downarrow")
                    }
                    .font(Font.taskText)
                    
                    ForEach(tasks) { task in
                        HStack {
                            Image("ic-checkbox")
                            Text(task.title)
                                .font(Font.taskText)
                            Spacer()
                            VStack(alignment: .trailing, spacing: 0) {
                                Text("18.00")
                                    .foregroundColor(Color("Alarm"))
                                    .font(Font.taskAlamText)
                                Image("ic-alarm")
                            }
                        }
                    }
                }
            }
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
