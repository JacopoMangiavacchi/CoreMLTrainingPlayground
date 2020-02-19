import XCTest
@testable import CoreMLTraining

final class CoreMLTrainingTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(CoreMLTraining().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
