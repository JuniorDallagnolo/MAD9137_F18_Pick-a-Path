//
//  Page.swift
//  MAD9137_F18_Pick-a-Path
//
//  Created by Ernilo Dallagnolo Junior on 2018-11-02.
//  Copyright © 2018 Ernilo Dallaagnolo Junior. All rights reserved.
//

import Foundation

class Page{
    
    // 5pt - make a class with the four properties
    // I added a 5th property to have the option to add images (this feature is not yet implemented)
    var pageNumber: Int?
    var pageText: String?
    var image: String?
    var pageChoiceA: Page?
    var pageChoiceB: Page?
    
    init(pageNumber:Int, pageText:String, image:String){
        self.pageNumber = pageNumber
        self.pageText = pageText
        self.image = image
    }
    
}
