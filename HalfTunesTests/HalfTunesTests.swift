//
//  HalfTunesTests.swift
//  HalfTunesTests
//
//  Created by Zabeehullah Qayumi on 11/5/18.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import XCTest

@testable import HalfTunes



class HalfTunesTests: XCTestCase {
    
    var sessionUnderTest : URLSession!

    

    override func setUp() {
        
        super.setUp()
        
        sessionUnderTest = URLSession(configuration: URLSessionConfiguration.default)
        
   
    }

    override func tearDown() {
  
    }

    func testExample() {
 
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
