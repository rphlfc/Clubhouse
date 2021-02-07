//
//  ContentView.swift
//  Clubhouse
//
//  Created by Raphael Cerqueira on 04/02/21.
//

import SwiftUI

struct ContentView: View {
    @State private var isProfileVisible = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    Button(action: {}, label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 28, weight: .bold))
                            
                        Text("All rooms")
                            .font(.system(size: 23, weight: .medium))
                    })
                    .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "bell")
                            .font(.system(size: 28, weight: .bold))
                            .foregroundColor(.primary)
                    })
                    
                    Button(action: {}, label: {
                        Image("jennifer")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                    })
                    .padding(.leading)
                    
                }
                .padding(.horizontal)
                
                ZStack(alignment: .bottom) {
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack {
                            LazyVGrid(columns: Array.init(repeating: GridItem(.adaptive(minimum: 200, maximum: 200)), count: 3), spacing: 20, content: {
                                ForEach(users) { user in
                                    Button(action: {
                                        withAnimation {
                                            isProfileVisible.toggle()
                                        }
                                    }, label: {
                                        VStack {
                                            ZStack(alignment: .bottomTrailing) {
                                                Image(user.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 90, height: 90)
                                                    .cornerRadius(40)
                                                
                                                if user.isMuted {
                                                    Image(systemName: "mic.slash.fill")
                                                        .foregroundColor(.primary)
                                                        .padding(8)
                                                        .background(Color.white)
                                                        .clipShape(Circle())
                                                        .offset(x: 8)
                                                        .shadow(radius: 2)
                                                }
                                            }
                                            
                                            Text(user.name)
                                                .font(.system(size: 19, weight: .medium))
                                                .foregroundColor(.primary)
                                        }
                                    })
                                }
                            })
                            .padding(.vertical, 20)
                            .padding(.horizontal)
                            .padding(.top, 20)
                            
                            HStack {
                                Image(systemName: "mic.slash.fill")
                                
                                Text("Audience")
                                
                                Spacer()
                            }
                            .foregroundColor(.gray)
                            .padding(.horizontal)
                            
                            LazyVGrid(columns: Array.init(repeating: GridItem(.adaptive(minimum: 160, maximum: 160)), count: 4), spacing: 28, content: {
                                ForEach(audience) { user in
                                    VStack {
                                        Image(user.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 80, height: 80)
                                            .cornerRadius(35)
                                        
                                        Text(user.name)
                                            .font(.system(size: 17, weight: .medium))
                                    }
                                }
                            })
                            .padding(.horizontal)
                            .padding(.top, 8)
                            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                        }
                        .padding(.bottom, 90)
                    })
                    .background(Color.white)
                    .cornerRadius(45)
                    .padding(.top, 30)
                    .ignoresSafeArea(.all, edges: .bottom)
                    
                    HStack {
                        Button(action: {}, label: {
                            HStack {
                                Text("✌️")
                                
                                Text("Leave quietly")
                                    .foregroundColor(.red)
                                    .fontWeight(.medium)
                            }
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .background(Color.gray.opacity(0.1))
                            .clipShape(Capsule())
                        })
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            Image(systemName: "plus")
                                .font(.title2)
                                .foregroundColor(.primary)
                                .padding(8)
                                .background(Color.gray.opacity(0.1))
                                .clipShape(Circle())
                        })
                        
                        Button(action: {}, label: {
                            Image(systemName: "hand.raised")
                                .font(.title2)
                                .foregroundColor(.primary)
                                .padding(8)
                                .background(Color.gray.opacity(0.1))
                                .clipShape(Circle())
                        })
                    }
                    .padding()
                    .padding(.bottom, 40)
                    .background(Color.white)
                }
            }
            .background(Color(#colorLiteral(red: 0.9496683478, green: 0.9417675138, blue: 0.8933166862, alpha: 1)).ignoresSafeArea(.all, edges: .all))
            
            if isProfileVisible {
                Color.black.opacity(0.6)
                    .ignoresSafeArea(.all, edges: .top)
            }
            
            ProfileView(isVisible: $isProfileVisible)
                .frame(height: 500)
                .cornerRadius(40)
                .offset(y: isProfileVisible ? 0 : 500)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
