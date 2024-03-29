//
//  ContentView.swift
//  MoonShot
//
//  Created by doha moustafa on 18/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")


    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
   var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(missions) { mission in
                        NavigationLink {
                            MissionView(mission: mission, astronauts: astronauts)
                        } label: {
                            VStack {
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding()
                                
                                VStack {
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Text(mission.formattedLaunchDate)
                                        .font(.caption)
                                        .foregroundColor(.white.opacity(0.5))
                                }
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                            .clipShape(Rectangle())
                            .overlay(Rectangle().stroke(.lightBackground))
                        } 
                    }
                }
                .padding([.horizontal,.bottom])
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
