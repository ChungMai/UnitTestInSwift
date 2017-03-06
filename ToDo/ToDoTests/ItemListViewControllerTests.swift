//
//  ItemListViewControllerTests.swift
//  ToDo
//
//  Created by MacMini on 3/6/17.
//  Copyright © 2017 Home. All rights reserved.
//

import XCTest

@testable import ToDo

class ItemListViewControllerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_TableViewIsNotNilAfterViewDidLoad() {
        let storyBoard = UIStoryboard(name:"Main", bundle:nil);
        let sut = storyBoard.instantiateViewController(withIdentifier: "ItemListViewController") as! ItemListViewController
        _ = sut.view;
        XCTAssertNotNil(sut.tableView)
        XCTAssertTrue(sut.tableView.dataSource is ItemListDataProvider)
        XCTAssertEqual(sut.tableView.dataSource as? ItemListDataProvider, sut.tableView.delegate as? ItemListDataProvider)

    }
}
