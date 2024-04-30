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
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
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
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button {
                        print("Click Plus Btn")
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .foregroundColor(Color.accentColor)
                            .padding(.bottom, 28)
                            .padding(.trailing, 24)
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
