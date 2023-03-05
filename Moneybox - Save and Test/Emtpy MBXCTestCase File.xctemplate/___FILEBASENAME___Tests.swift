//___FILEHEADER___

import XCTest
@testable import Moneybox
import MBCore
import MBStrings

final class ___VARIABLE_moduleName___Tests: MBXCTestCase {
    var sut: /*@START_MENU_TOKEN@*/___VARIABLE_moduleName___!/*@END_MENU_TOKEN@*/
    
    override func setUp() {
        super.setUp()
        sut = /*@START_MENU_TOKEN@*/___VARIABLE_moduleName___()/*@END_MENU_TOKEN@*/
    }
    
    override func tearDown() {
        super.tearDown()
        sut = nil
    }
}

extension ___VARIABLE_moduleName___ViewModelTests {
    // Test your ___VARIABLE_moduleName___ here
    func test_/*@START_MENU_TOKEN@*/DidPerformAction/*@END_MENU_TOKEN@*/_/*@START_MENU_TOKEN@*/SomethingWentSuccessfully/*@END_MENU_TOKEN@*/() {
        given(/*@START_MENU_TOKEN@*/"Succesfull action such as apiRequest returns"/*@END_MENU_TOKEN@*/) {

        }
        when(/*@START_MENU_TOKEN@*/"User taps button A"/*@END_MENU_TOKEN@*/) {

        }
        then(/*@START_MENU_TOKEN@*/"Coordinator dismisses View Controller"/*@END_MENU_TOKEN@*/) {

        }
    }

    /*
    Example method: 
        func test_DidTapChangeTargetButton_CustomLisaTargetChangedSuccesfully() {
        given("Successful response from the apiService") {
            apiService.returnSuccess = true
            apiService.returnedJson = "customLisaTargetSuccessResponse"
        }
        when("User taps to change the CustomLisaTarget") {
            sut.handle(.didTapChangeTargetButton)
        }
        then("Coordinator calls navigation succesfully") {
            XCTAssertTrue(coordinator.didUpdateCustomLisaTargetCalled)
        }
    }
    */  
}

// MARK: - Analytics
extension ___VARIABLE_moduleName___ViewModelTests {
    func test_TrackAnalytics_For_DidTapHelpInfoButton() {
        when(/*@START_MENU_TOKEN@*/"User taps button A"/*@END_MENU_TOKEN@*/) {
            
        }
        then(/*@START_MENU_TOKEN@*/"The appropriate event gets tracked"/*@END_MENU_TOKEN@*/) {
            XCTAssertEqual(analyticsManager.lastTrackedEventType, /*@START_MENU_TOKEN@*/.home_taxyeartarget_howmuchtosave/*@END_MENU_TOKEN@*/)
        }
    }
}