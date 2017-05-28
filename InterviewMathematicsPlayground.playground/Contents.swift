//: ## Mathematics for Coding Interviews
//: Taken from https://www.topcoder.com/community/data-science/data-science-tutorials/mathematics-for-topcoders/ and translated to Swift Code to practice

import UIKit
import XCTest

func shouldReturnOne() -> Int {
    return 1;
}

//: Converts a number in base (2<=b<=10) to a decimal number:
func convertNumberToDecimal(_ number:Int, fromBase base:Int) -> Int {
    var mutableNumber = number;
    var result=0;
    var multiplier=1;
    
    while(mutableNumber>0)
    {
        result+=mutableNumber%10*multiplier;
        multiplier*=base;
        mutableNumber/=10;
    }
    
    return result;
}
//: Converts from a decimal number to a number in base (2<=b<=10):
func convertNumberFromDecimal(_ number:Int, toBase base:Int) -> Int {
    var mutableNumber = number;
    var result = 0;
    var multiplier = 1;
    
    while(mutableNumber>0)
    {
        result+=mutableNumber%base*multiplier;
        multiplier*=10;
        mutableNumber/=base;
    }
    
    return result;
}

//:  Tests
class MyTests : XCTestCase {
    func testShouldFail() {
        XCTFail("You must fail to succeed!")
    }
    func testShouldPass() {
        XCTAssertEqual(2+2, 4)
    }
    
    func testShouldReturnOne() {
        let result = shouldReturnOne()
        XCTAssert(result==1,"shouldReturnOne is not returning 1")
    }
//:  Test for func convertNumberToDecimal(_ number:Int, fromBase base:Int) -> Int
    func testConvertNumber11fromBinaryToDecimal() {
        let result = convertNumberToDecimal(11, fromBase: 2)
        XCTAssert(result==3,"testConvertNumber11fromBinaryToDecimal is returning the wrong answer: \(result)")
    }
    
    func testConvertNumber111111fromBinaryToDecimal() {
        let result = convertNumberToDecimal(111111, fromBase: 2)
        XCTAssert(result==63,"testConvertNumber111111fromBinaryToDecimal is returning the wrong answer: \(result)")
    }
//:  Test for func convertNumberFromDecimal(_ number:Int, toBase base:Int) -> Int
    func testConvertNumberThreefromDecimalToBinary() {
        let result = convertNumberFromDecimal(3, toBase: 2)
        XCTAssert(result==11,"ConvertNumberThreefromDecimalToBinary is returning the wrong answer: \(result)")
    }
    
    func testConvertNumber63fromDecimalToBinary() {
        let result = convertNumberFromDecimal(63, toBase: 2)
        XCTAssert(result==111111,"ConvertNumberThreefromDecimalToBinary is returning the wrong answer: \(result)")
    }
}
TestRunner().runTests(testClass: MyTests.self)


