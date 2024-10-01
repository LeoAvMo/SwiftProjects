//
//  MainView.swift
//  tareaGraficas
//
//  Created by Leo A.Molina on 27/09/24.
//

let StrayKids = Color.red
let Twice = Color.pink
let Itzy = Color.purple
let Got7 = Color.blue

let colors = [StrayKids, Twice, Itzy, Got7]

import SwiftUI
import Charts

let Images = ["StrayKids", "Twice", "Got7", "Itzy"]

struct MainView: View {
    var body: some View {
        NavigationStack{
            VStack (alignment: .leading){
                HStack {Spacer()}
                //Título
                Text("Grupos de JYP")
                    .font(.largeTitle)
                    .bold()
                
                //Gráficas
                VStack(alignment: .leading){
                    Text("Streams en YouTube")
                        .font(.title)
                        .fontWeight(.medium)
                    //Gráfica de barras
                    Chart(0...KGroups.count - 1, id: \.self){ index in
                        BarMark(
                            x: .value("Grupo", KGroups[index].name),
                            y: .value("Streams", KGroups[index].views)
                        )
                        .foregroundStyle(colors[index])
                    }
                    
                    Text("Álbumes vendidos")
                        .font(.title)
                        .fontWeight(.medium)
                    //Gráfica de línea
                    Chart {
                        ForEach(KGroups) { item in
                            ForEach(item.albumList.indices, id: \.self) { index in
                                LineMark(
                                    x: .value("Grupo", item.name),
                                    y: .value("Ventas", item.albumList[index])
                                )
                                .foregroundStyle(colors[index])
                            }
                        }
                    }
                    
                    Text("Vistas de MV con más views")
                        .font(.title)
                        .fontWeight(.medium)
                    //Gráfica de pastel
                    
                    Divider()
                    Text("Descubrir grupo")
                        .font(.title)
                        .fontWeight(.medium)
                    List(0...KGroups.count - 1, id: \.self){
                        index in
                        NavigationLink{
                            GroupDetail()
                        } label: {
                            ListElementView(logoX: Images[index], nameX: KGroups[index].name)
                        }
                    
                    }
                    .font(.title)
                    .bold()
                    .listStyle(.plain)
                    
                }
                
                Spacer()
            }
            .padding()
            .background(Color.white)
    }
        
        
    }
}

#Preview {
    MainView()
}
