//
//  LogoView.swift
//  DubDubGrub
//
//  Created by Arkadiusz Plumbaum on 14/09/2023.
//

import SwiftUI

struct LogoView: View {
    
    let logoName: String
    let frameWidth: CGFloat
    
    var body: some View {
        Image(logoName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: frameWidth)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView(logoName: LogoImage.logo, frameWidth: 250)
    }
}
