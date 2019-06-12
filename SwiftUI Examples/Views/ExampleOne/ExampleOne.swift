//
//  ExampleOne.swift
//  SwiftUI Examples
//
//  Created by Dustin Newbold on 6/12/19.
//  Copyright © 2019 Dustin Newbold. All rights reserved.
//

import SwiftUI

struct ExampleOne : View {
    var body: some View {
		NavigationView {
			TabbedView {
				ExampleOneTabOne()
					.tabItemLabel(Text("Tab #1"))
					.tag(0)
				
				ExampleOneTabTwo()
					.tabItemLabel(Text("Tab #2"))
					.tag(1)
			}
			.navigationBarTitle(Text("Posts"), displayMode: .automatic)
		}
    }
}


struct ExampleOneTabOne : View {
	@State var showTrending: Bool = false

	var body: some View {
		ScrollView {
			Post(title: "Welcome to YML", image: "YMLlogo")
				.tag(2)
			Post(title: "Another YML Post", image: "YMLlogo")
				.tag(3)
		}.padding()
	}
}

struct Post: View {
	var title: String
	var image: String
	
	@State var showPost: Bool = true

	var body: some View {
		VStack(alignment: .leading, spacing: 5) {
			HStack {
				Text("Welcome to YML")
				Image(systemName: "arrow.down.circle")
					.rotationEffect(self.showPost ? .degrees(180) : .degrees(0))
					.animation(.spring())
			}
			.tapAction {
				self.showPost = !self.showPost
				print("Tapped")
			}
			
			Image(self.image)
				.scaleEffect(CGSize(width: 0.1, height: 0.1))
				.animation(.basic(duration: 0.5, curve: .easeOut))
		}
		
	}
}


struct ExampleOneTabTwo : View {
	var body: some View {
		Text("Hello, World #2")
	}
}
