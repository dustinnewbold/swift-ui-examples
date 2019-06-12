//
//  Card.swift
//  SwiftUI Examples
//
//  Created by Dustin Newbold on 6/12/19.
//  Copyright © 2019 Dustin Newbold. All rights reserved.
//

import SwiftUI

struct Card<Content>: View where Content: View {
	var content: () -> Content
	
    var body: some View {
		GeometryReader { geometry in
			self.content()
				.background(Color.red)
				.relativeSize(width: 1.0, height: 1.0)
		}
		.clipShape(RoundedRectangle(cornerRadius: 50))
		.background(Color.white)
		.shadow(radius: 5)
    }
}
