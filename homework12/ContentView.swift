//
//  ContentView.swift
//  homework12
//
//  Created by Banibe Ebegbodi on 10/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("SwiftUI Animations")
                    .font(.system(size: 50, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(30)
                
                ScrollView {
                    NavigationLink(destination: Implicit()) {
                        Label(
                            title: {
                                Text("Implicit")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            },
                            icon: {
                                Image(systemName: "heart")
                                    .font(.title)
                            }
                        )
                        
                    }
                    .buttonStyle(CuteStyle())
                    .padding(.horizontal)
                    
                    NavigationLink(destination: Explicit()) {
                        Label(
                            title: {
                                Text("Explicit")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            },
                            icon: {
                                Image(systemName: "heart.fill")
                                    .font(.title)
                            }
                        )
                        
                    }
                    .buttonStyle(CuteStyle())
                    .padding()
                    
                    NavigationLink(destination: Loading()) {
                        Label(
                            title: {
                                Text("Circle Load")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            },
                            icon: {
                                Image(systemName: "circle")
                                    .font(.title)
                            }
                        )
                        
                    }
                    .buttonStyle(CuteStyle())
                    .padding(.horizontal)
                    
                    
                    NavigationLink(destination: RectangleLoading()) {
                        Label(
                            title: {
                                Text("Rectangle Load")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            },
                            icon: {
                                Image(systemName: "rectangle")
                                    .font(.title)
                            }
                        )
                        
                    }
                    .buttonStyle(CuteStyle())
                    .padding()
                    
                    NavigationLink(destination: ProgressLoad()) {
                        Label(
                            title: {
                                Text("Progress Load")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            },
                            icon: {
                                Image(systemName: "circle")
                                    .font(.title)
                            }
                        )
                        
                    }
                    .buttonStyle(CuteStyle())
                    .padding(.horizontal)
                    
                    NavigationLink(destination: DotLoad()) {
                        Label(
                            title: {
                                Text("Dot Load")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            },
                            icon: {
                                Image(systemName: "circle.fill")
                                    .font(.title)
                            }
                        )
                        
                    }
                    .buttonStyle(CuteStyle())
                    .padding()
                    
                    NavigationLink(destination: Morphing()) {
                        Label(
                            title: {
                                Text("Morphing")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            },
                            icon: {
                                Image(systemName: "mic.fill")
                                    .font(.title)
                            }
                        )
                        
                    }
                    .buttonStyle(CuteStyle())
                    .padding(.horizontal)
                    
                    NavigationLink(destination: SimpleTransition()) {
                        Label(
                            title: {
                                Text("Simple Transition")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            },
                            icon: {
                                Image(systemName: "rectangle.portrait")
                                    .font(.title)
                            }
                        )
                        
                    }
                    .buttonStyle(CuteStyle())
                    .padding()

                    NavigationLink(destination: CombiningTransitions()) {
                        Label(
                            title: {
                                Text("Combining")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            },
                            icon: {
                                Image(systemName: "rectangle.portrait")
                                    .font(.title)
                            }
                        )
                        
                    }
                    .buttonStyle(CuteStyle())
                    .padding(.horizontal)

                    NavigationLink(destination: Asymmetric()) {
                        Label(
                            title: {
                                Text("Asymmetric")
                                    .fontWeight(.semibold)
                                    .font(.title)
                            },
                            icon: {
                                Image(systemName: "rectangle.portrait")
                                    .font(.title)
                            }
                        )
                        
                    }
                    .buttonStyle(CuteStyle())
                    .padding()
                }
            }
            .padding()
        }
    }
}


struct CuteStyle: ButtonStyle {
func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .foregroundColor(.white)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.gray]), startPoint: .leading, endPoint: .trailing))                .cornerRadius(40)
        .padding(.horizontal, 20)
        .shadow(color: .gray, radius: 10.0, x: 5, y: 6)
        .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}

#Preview {
    ContentView()
}
