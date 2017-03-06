//
//  ItemListDataProviderTests.swift
//  ToDo
//
//  Created by MacMini on 3/6/17.
//  Copyright © 2017 Home. All rights reserved.
//

import XCTest

@testable import ToDo

class ItemListDataProviderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testNumberOfSections_IsTwo() {
    
        let sut = ItemListDataProvider();
        let tableView = UITableView();
        tableView.dataSource = sut
        
        let numberOfSession = tableView.numberOfSections;
        XCTAssertEqual(numberOfSession, 2)
    }
    
    func testNumberRowsInFirstSection_IsToDoCount() {
        let sut = ItemListDataProvider()
        let tableView = UITableView()
        tableView.dataSource = sut
        
        sut.itemManager?.addItem(item: ToDoItem(title: "First"))
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 1)
        sut.itemManager?.addItem(item: ToDoItem(title: "Second"))
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 2)
    }
}

