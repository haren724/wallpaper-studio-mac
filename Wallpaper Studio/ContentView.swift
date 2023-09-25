//
//  ContentView.swift
//  Wallpaper Studio
//
//  Created by Haren on 2023/9/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var isGuideReveal = false
    @State var step = 1
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Choose a template for your project:")
            VStack {
                Group {
                    switch step {
                    case 1:
                        Text("\(1)")
                    case 2:
                        Text("\(2)")
                    case 3:
                        Text("\(3)")
                    default:
                        Text("Default")
                    }
                }
                .transition(.slide)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(nsColor: .windowBackgroundColor))
            .border(Color(nsColor: .separatorColor))
            HStack {
                Button {
                    step = 1
                } label: {
                    Text("Cancel")
                        .frame(width: 60)
                }
                Spacer()
                Button {
                    step -= 1
                } label: {
                    Text("Previous")
                        .frame(width: 60)
                }
                Button {
                    withAnimation {
                        step += 1
                    }
                } label: {
                    Text("Next")
                        .frame(width: 60)
                }
                .buttonStyle(.borderedProminent)
            }
            .padding(.vertical)
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .presentedWindowToolbarStyle(.unifiedCompact(showsTitle: false))
        .sheet(isPresented: $isGuideReveal) {
            
        }
    }
}

#Preview {
    ContentView()
        .frame(width: 800, height: 600)
}
