//
//  cardView.swift
//  Pantalla
//
//  Created by Miguel Otero on 10/19/22.
//

import SwiftUI

struct cardView: View {
    
    
    var body: some View {
        VStack {
            VStack {
                Text("Para continuar seleciona una opción:")
                    .padding(.top)
                    .foregroundColor(Color("azul-base"))
              
                
                
            }
        // White button with green border.
            LargeButton(title: "Invite a Friend",
                        backgroundColor: Color.white,
                        foregroundColor: Color.green) {
                                    print("Hello World ggggg")
                                }
            
            LargeButton(title: "ttttt",
                        backgroundColor: Color.blue){
                
                print("Hello World")
            }

            // Yellow button without a border
            LargeButton(title: "Invite a Friend",
                        backgroundColor: Color.yellow) {
                                    print("Hello World")
                                }
           
            
        }
        
    }
    
    
    struct cardView_Previews: PreviewProvider {
        static var previews: some View {
            cardView()
        }
    }
    struct LargeButtonStyle : ButtonStyle {
        
        let backgroundColor: Color
        let foregroundColor: Color
        let isDisabled: Bool
        
        func makeBody(configuration: Self.Configuration) -> some View {
            let currentForegroundColor = isDisabled || configuration.isPressed ? foregroundColor.opacity(0.3) : foregroundColor
            return configuration.label
            
                .padding()
                .frame(minWidth: 0,maxWidth: .infinity)
                .background(isDisabled || configuration.isPressed ? backgroundColor.opacity(0.3) : backgroundColor)
                .font(.subheadline)
                .foregroundColor(currentForegroundColor)
                .cornerRadius(5)
                .overlay (
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(currentForegroundColor,lineWidth: 1))
                .padding([.top,.bottom],10)
        }
        
        
    }
    struct LargeButton:View {
        
        private static let buttonHorizontalMargins: CGFloat = 20
        
        var backgroundColor: Color
        var foregroundColor: Color
        
        private let title: String
        private let action: () -> Void
        
        // It would be nice to make this into a binding.
        private let disabled: Bool
        
        init(title: String,
             disabled: Bool = false,
             backgroundColor: Color = Color.green,
             foregroundColor: Color = Color.white,
             action: @escaping () -> Void) {
            self.backgroundColor = backgroundColor
            self.foregroundColor = foregroundColor
            self.title = title
            self.action = action
            self.disabled = disabled
        }
        var body: some View {
            
            HStack {
                Spacer(minLength: LargeButton.buttonHorizontalMargins)
                Button(action:self.action) {
                    Text(self.title)
                        .frame(maxWidth:.infinity)
                }
                .buttonStyle(LargeButtonStyle(backgroundColor: backgroundColor,
                                              foregroundColor: foregroundColor,
                                              isDisabled: disabled))
                .disabled(self.disabled)
                Spacer(minLength: LargeButton.buttonHorizontalMargins)
            }
            .frame(maxWidth:.infinity)
        }
    }
    //
    //                    .background(Color(cgColor: CGColor(red: 0.961,
    //                                                       green: 0.961,
    //                                                       blue: 0.961,
    //                                                       alpha: 1))).cornerRadius(5)
    }
