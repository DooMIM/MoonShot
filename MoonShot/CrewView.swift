//
//  CrewView.swift
//  MoonShot
//
//  Created by doha moustafa on 22/08/2023.
//

/*import SwiftUI

struct CrewView: View {
    
    struct CrewMember {
        let role : String
        let astronaut : Astronaut
    }
    
    let crew : [CrewMember]
    let mission: Mission
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) {
                    CrewMember in NavigationLink {
                        AstronautView(astronaut: CrewMember.astronaut)
                    } label: {
                        HStack {
                            Image(CrewMember.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(Circle())
                                .overlay(
                                    Circle()
                                        .strokeBorder(.white, lineWidth: 2)
                                )
                            VStack(alignment: .leading) {
                                Text(CrewMember.astronaut.name)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                Text(CrewMember.role)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .navigationTitle(mission.displayName)
            .navigationBarTitleDisplayMode(.inline)
            .background(.darkBackground)
        }
        init {
            self.mission = mission
            
            self.crew = mission.crew.map {
                member in
                if let astronaut = astronauts[member.name] {
                    return CrewMember(role: member.role, astronaut: astronaut)
                } else {
                    fatalError("Missing \(member.name)")
                }
            }
        }
    }
    
}
struct CrewView_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static var previews: some View {
        CrewView(crew: CrewMember)
    }
 }/**/*/
