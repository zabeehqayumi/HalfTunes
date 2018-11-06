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
        
        sessionUnderTest = nil
        super.tearDown()
  
    }
    
    func testApiCalls(){
        // given
        
        let url = URL(string: "https://itunes.apple.com/search?media=music&entity=song&term=abba")
        // 1
        let promise = expectation(description: "status code 200")
        
        // when
        
        let dataTask = sessionUnderTest.dataTask(with: url!) { (data, response, error) in
            
            if let error = error{
                XCTFail(error.localizedDescription)
                return
            }
            
            
            else if let statusCode = (response as? HTTPURLResponse)?.statusCode{
                if statusCode == 200{
                    // 2
                    promise.fulfill()
                }else{
                    XCTFail("Status Code : \(statusCode)")
                }
            }
        }
        
        dataTask.resume()
        // 3
        
        waitForExpectations(timeout: 5, handler: nil)
    }

  

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
