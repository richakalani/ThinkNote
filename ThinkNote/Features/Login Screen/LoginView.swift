//
//  LoginView.swift
//  ThinkNote
//
//  Created by Richa Kalani on 19/06/25.
//

import SwiftUI

enum Route {
    case loginView
    case homeScreenView
    case detailView
}

struct LoginView: View {
    @State var name: String  = ""
    @State private var navigationPath: [Route] = []
    var body: some View {
        NavigationStack(path: $navigationPath) {
            LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .overlay(content: {
                    VStack {
                        Text("Think Note")
                            .font(.system(size: 50, weight: .medium, design: .serif))
                            .frame(maxWidth: .infinity)
                        RoundedRectangle(cornerRadius: 8.0)
                            .fill(Color.white)
                            .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.2, alignment: .center)
                            .overlay(content: {
                                VStack(content: {
                                    TextField(text: $name, label: {
                                        Text("Name")
                                    })
                                    .padding([.leading, .trailing], 16)
                                    .padding([.top, .bottom], 5)
                                    .overlay(content: {
                                        Rectangle()
                                            .fill(.clear)
                                            .border(.black.opacity(0.5))
                                            .padding([.leading, .trailing], 12)
                                    })
                                    .padding(.bottom, 20)
                                    
                                    Button(action: {
                                        navigationPath.append(.homeScreenView)
                                    }, label: {
                                        Text("Continue")
                                    })
                                    .navigationDestination(for: Route.self, destination: { route in
                                        switch route {
                                        case .homeScreenView: HomeScreenView(navigationPath: $navigationPath)
                                        case .loginView: LoginView()
                                        case .detailView: NotesDetailsScreenView()
                                        }
                                        
                                    })
                                    .buttonStyle(.borderedProminent)
                                    
                                })
                            })
                    }
                })
                .background(.white)
        }
    }
}

#Preview {
    LoginView()
}
