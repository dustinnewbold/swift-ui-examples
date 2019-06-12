//
//  ContentView.swift
//  SwiftUI Examples
//
//  Created by Dustin Newbold on 6/12/19.
//  Copyright © 2019 Dustin Newbold. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
		// Tabbed Views
        ExampleOne()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
