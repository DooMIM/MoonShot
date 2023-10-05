//
//  AstronautView.swift
//  MoonShot
//
//  Created by doha moustafa on 22/08/2023.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut

    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                Text(astronaut.name)
                    .padding(.horizontal)
                    .font(.title2)

                Text(astronaut.description)
                    .padding()

            }
    
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")

    static var previews: some View {
        AstronautView(astronaut: astronauts["armstrong"]!)
            .preferredColorScheme(.dark)

    }
}
