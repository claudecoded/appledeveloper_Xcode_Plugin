import XCTest
@testable import PluginCLI

final class PluginTests: XCTestCase {
    
    func testCardWithCardPrompt() {
        let prompt = "create a dynamic card component"
        let result = PluginCLI.processPrompt(prompt)
        
        XCTAssertTrue(result.contains("struct ComponentCardView: View"))
        XCTAssertTrue(result.contains("import SwiftUI"))
    }
    
    func testListWithListPrompt() {
        let prompt = "generate an automated list view"
        let result = PluginCLI.processPrompt(prompt)
        
        XCTAssertTrue(result.contains("struct AutomatedListView: View"))
    }
}
