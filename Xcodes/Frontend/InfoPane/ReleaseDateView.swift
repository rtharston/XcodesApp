//
//  ReleaseDateView.swift
//  Xcodes
//
//  Created by Duong Thai on 11/10/2023.
//  Copyright © 2023 Robots and Pencils. All rights reserved.
//

import SwiftUI

struct ReleaseDateView: View {
    let date: Date?
    let url: URL?
    var body: some View {
        if let date = date {
           
                VStack(alignment: .leading) {
                    Text("ReleaseDate")
                        .font(.headline)
                    
                    Text("\(date, style: .date)")
                        .font(.subheadline)
                  
                    if let url {
                        ReleaseNotesView(url: url)
                            .padding(.top, 2)
                    }
                }
                
           
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(.background)
            .clipShape(RoundedRectangle(cornerRadius: 5, style: .continuous))
        } else {
            EmptyView()
        }
    }
}

#Preview {
  ReleaseDateView(date: Date(), url: URL(string: "https://www.xcodes.app")!)
    .padding()
}
