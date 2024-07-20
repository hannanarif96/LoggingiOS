import XCTest
@testable import LoggingiOS

final class LoggingiOSTests: XCTestCase {

    var mockLogger: Logger!
    var viewModel: MainViewModel!

    override func setUpWithError() throws {
        mockLogger = Logger()
        viewModel = MainViewModel(logger: mockLogger)
    }

    override func tearDownWithError() throws {
        mockLogger = nil
        viewModel = nil
    }
    
    func testLogDebug() {
        let result = mockLogger.logDebug(message: "This is a debug message")
        XCTAssertEqual("Debug Log: This is a debug message", result)
    }
    
    func testLogInfo() {
        let result = mockLogger.logInfo(message: "This is an info message")
        XCTAssertEqual("Info Log: This is an info message", result)
    }
    
    func testLogWarn() {
        let result = mockLogger.logWarn(message: "This is a warn message")
        XCTAssertEqual("Warn Log: This is a warn message", result)
    }
    
    func testLogError() {
        let result = mockLogger.logError(message: "This is an error message")
        XCTAssertEqual("Error Log: This is an error message", result)
    }
    
    func testLogData() {
        let className = "TestClassName"
        viewModel.logData(className: className)
        
        XCTAssertEqual("Debug Log: \(className)", viewModel.logsList[0])
        XCTAssertEqual("Info Log: \(className)", viewModel.logsList[1])
        XCTAssertEqual("Warn Log: \(className)", viewModel.logsList[2])
        XCTAssertEqual("Error Log: \(className)", viewModel.logsList[3])
        
        viewModel.logsList.removeAll()
    }
}
