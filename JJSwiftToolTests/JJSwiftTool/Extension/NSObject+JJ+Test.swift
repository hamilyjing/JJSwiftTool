//
//  NSObject+JJ+Test.swift
//  JJSwiftTool
//
//  Created by JJ on 3/14/17.
//  Copyright © 2017 jianjing. All rights reserved.
//

import XCTest

@testable import JJSwiftTool

class HostInfo: NSObject, NSCoding {
    var name = ""
    override init() {
        super.init()
    }
    
    convenience required init?(coder aDecoder: NSCoder) {
        self.init()
        
        jjs_decode(coder: aDecoder)
    }
    
    func encode(with aCoder: NSCoder) {
        jjs_encode(with: aCoder)
    }
}

final class QiniuHostInfo: HostInfo {
    var accessKey = "accessKey"
    var secretKey = "secretKey"
    
    var imgur = ImgurHostInfo()
    
    var array: [Any]?
}

final class ImgurHostInfo: HostInfo {
    var userName = "userName"
    var password = "password"
}

class AA {
    var pp = "aaaa"
}

class NSObject_JJ_Test: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let bb = QiniuHostInfo()
        bb.accessKey = "bbaccess"
        bb.secretKey = "bbsercret"
        bb.imgur.userName = "user"
        bb.imgur.password = "pass"
        bb.array = [ImgurHostInfo]()
        bb.array?.append(bb.imgur)
        let data = NSKeyedArchiver.archivedData(withRootObject: bb)
        
        let cc = NSKeyedUnarchiver.unarchiveObject(with: data)!
        
        let aa = AA()
        NSObject.jjs_forEachChildOfMirror(reflecting: aa) { key in
            print(key)
        }
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
