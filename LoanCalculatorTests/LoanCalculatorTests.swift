//
//  LoanCalculatorTests.swift
//  LoanCalculatorTests
//
//  Created by Aniket Bhondave on 22/01/21.
//

import XCTest
@testable import LoanCalculator

class LoanCalculatorTests: XCTestCase {
    
    override class func setUp() {
        print("Setup")
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
       
    }

    override func tearDownWithError() throws {
        print("tearDown with error")
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    override class func tearDown() {
        print("tearDown")
    }

    func testExample() throws
    {
        print("Start testExample")
        //4825
        let result = callEMICalculator(loanAmount: 500000, intrestRate: 10, tenure: 240)
        XCTAssertEqual(result, 4825)
        
    }
    
    

    func testExample1() throws
    {
        print("Start testExample1")
        //4825
        let result = callEMICalculator(loanAmount: 500000, intrestRate: 10, tenure: 240)
        XCTAssertEqual(result, 4825)
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
