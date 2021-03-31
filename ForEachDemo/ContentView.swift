//
//  ContentView.swift
//  ForEachDemo
//
//  Created by Fred Javalera on 3/31/21.
//

import SwiftUI

struct ContentView: View {
  //MARK: - VARIABLES
  var array = ["Pizza", "Burrito", "Sushi"]
  
  //MARK: - BODY
  var body: some View {
    //VStack
    VStack {
      ForEach (array, id: \.self) { recipe in
        // This code will be repeated for each element in the array.
        Text(recipe)
      }
    }
    
    //VStack - ForEach alternative syntax with leading index displayed.
    VStack {
      ForEach (0..<2, id: \.self) { index in
        // This code will be repeated for each element in the array.
        Text(String(index) + " " + array[index])
      }
    }
    
    // ...compare to List. Similar syntax without the VStack.
    List (array, id: \.self) { recipe in
      // This code will be repeated for each element in the array.
      Text(recipe)
    }
    
    // ...compare to ScrollView. Combo of VStack approach and List approach above. Similar syntax.
    ScrollView {
      ForEach (array, id: \.self) { recipe in
        // This code will be repeated for each element in the array.
        Text(recipe)
      }
    }
  }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
