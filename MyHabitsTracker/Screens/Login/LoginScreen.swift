//
//  LoginScreen.swift
//  MyHabitsTracker
//
//  Created by Максим Самороковский on 06.04.2024.
//

import SwiftUI

struct LoginScreen: View {
    @State private var presentNextView = false
    var body: some View {
        NavigationStack {
            VStack {
                Image(.work)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 370)
               Spacer()
                VStack(spacing: 15) {
                    Text("Welcome to My Habits Tracker")
                        .font(.system(size: 25, weight: .bold))
    //                    .foregroundStyle(.baseBlue)
   
                Text("For the application to work correctly, login or register")
                    .multilineTextAlignment(.center)
                    .font(.headline)
                    .foregroundColor(.baseBlue)
                }
                Spacer()
                
                HStack {
                    Button {
                        presentNextView.toggle()
                    } label: {
                        Text("Login")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundStyle(.white)
                    }
                    .frame(width: 160, height: 50)
                    .background(.baseBlue)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                    Button {
                        // action
                    } label: {
                        Text("Registration")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundStyle(.black)
                    }
                    .frame(width: 160, height: 50)
                }
                Spacer()
            }
            .padding()
            .navigationDestination(isPresented: $presentNextView) {
                Text("NextView")
            }
        }
    }
}

#Preview {
    LoginScreen()
}

