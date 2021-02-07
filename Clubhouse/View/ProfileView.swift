//
//  ProfileView.swift
//  Clubhouse
//
//  Created by Raphael Cerqueira on 07/02/21.
//

import SwiftUI

struct ProfileView: View {
    @Binding var isVisible: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("jennifer")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 95)
                    .cornerRadius(40)
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    HStack {
                        Button(action: {}, label: {
                            Image(systemName: "ellipsis")
                                .font(.title)
                                .rotationEffect(.init(degrees: -90))
                                .foregroundColor(.primary)
                        })
                        
                        Button(action: {
                            withAnimation {
                                isVisible.toggle()
                            }
                        }, label: {
                            Image(systemName: "xmark")
                                .font(.title2)
                                .foregroundColor(.primary)
                        })
                        .padding(.leading)
                    }
                    
                    HStack(spacing: 12) {
                        Button(action: {}, label: {
                            Image(systemName: "bell")
                                .font(.title2)
                                .foregroundColor(Color(#colorLiteral(red: 0.3725609779, green: 0.5134376884, blue: 0.7059899569, alpha: 1)))
                                .padding(4)
                                .background(Circle()
                                                .strokeBorder(Color(#colorLiteral(red: 0.3725609779, green: 0.5134376884, blue: 0.7059899569, alpha: 1)), lineWidth: 2))
                        })
                        
                        Button(action: {}, label: {
                            Text("Following")
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                                .background(Color(#colorLiteral(red: 0.3725609779, green: 0.5134376884, blue: 0.7059899569, alpha: 1)))
                                .clipShape(Capsule())
                        })
                        
                        Button(action: {}, label: {
                            Image(systemName: "star")
                                .font(.title3)
                                .foregroundColor(Color(#colorLiteral(red: 0.3725609779, green: 0.5134376884, blue: 0.7059899569, alpha: 1)))
                                .padding(6)
                                .background(Circle()
                                                .strokeBorder(Color(#colorLiteral(red: 0.3725609779, green: 0.5134376884, blue: 0.7059899569, alpha: 1)), lineWidth: 2))
                        })
                    }
                    .padding(.top, 20)
                }
            }
            .padding(.horizontal)
            .padding(.top, 30)
            
            Text("Jennifer Aniston")
                .fontWeight(.bold)
                .padding(.leading)
                .padding(.top, 8)
            
            Text("@jennifer")
                .foregroundColor(.gray)
                .padding(.leading)
                .padding(.top, 8)
            
            HStack(spacing: 6) {
                Text("50777")
                    .fontWeight(.bold)
                
                Text("followers")
                    .foregroundColor(.gray)
                
                Text("325")
                    .fontWeight(.bold)
                    .padding(.leading, 20)
                
                Text("following")
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 8)
            
            Text("Jennifer Joanna Aniston is an American actress, producer, and businesswoman.")
                .padding(.top, 40)
                .padding(.horizontal)
            
            Spacer()
            
            Button(action: {}, label: {
                Text("View full profile")
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                    .frame(width: UIScreen.main.bounds.width - 30, height: 50)
                    .background(Color.gray.opacity(0.3))
                    .clipShape(Capsule())
            })
            .padding(.horizontal)
            .padding(.bottom, 20)
        }
        .background(Color.white)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(isVisible: .constant(true))
    }
}
