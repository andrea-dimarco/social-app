//
//  NavigationBar.swift
//  Uni Room
//
//  Created by Francesco Palandra on 05/01/22.
//

import SwiftUI

struct NavigationBar: View {
    var title = ""
    @Binding var hasScrolled: Bool
    
    var body: some View {
        ZStack{
            Color.clear
                .background(.ultraThinMaterial)
//                .blur(radius: 10)
                .opacity(hasScrolled ? 1 : 0)
            if hasScrolled{
                HStack{
                    Text("UniLife")
                        .font(.title2.bold())                            .foregroundStyle(
                                .linearGradient(
                                    colors:  [.red,.blue],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                ))
                    Text(title)
                            .font( .title2.weight(.bold))
                        .frame(maxWidth:.infinity,alignment: .center)
//                    .padding(.trailing,20)
                     Spacer()

                }
                
                .frame(maxWidth:.infinity,maxHeight: 40,alignment: .leading)
                .padding(.leading, 20)
                .padding(.trailing,100)
                .padding(.top, 50)
                .offset(y:hasScrolled ? -4:0)
            }
            else{
            HStack {
                VStack{
                   Spacer()
                Text("UniLife")
                        .foregroundStyle(
                            .linearGradient(
                                colors:  [.red,.blue],
                                startPoint: .leading,
                                endPoint: .trailing
                            ))
//                        .foregroundColor(.red)
                        .font(.title2.bold())
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding(.leading,20)
    
                Text(title)
                        .font(.largeTitle.weight(.bold))
                        .frame(maxWidth:.infinity,alignment: .leading)
                .padding(.leading,20)
                  
                       
                    
                }
                Spacer()
                    
//                Profile()
     
                                    Button(action: {}){
                                        Image(systemName: "person.circle")
                                            .font(.largeTitle)
                                    }
                                    .accentColor(.blue)
                                    .padding(.top,30)
                
            }
            
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding(.trailing, 20)
            .padding(.top, 20)
            .offset(y:hasScrolled ? -4:0)
            }

            
            
        }
        .frame(height: hasScrolled ? 60: 100)
//        .frame(maxHeight:.infinity,alignment: .top)
        
        
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(title: "Eventi Ufficiali", hasScrolled: .constant(true))
    }
}
