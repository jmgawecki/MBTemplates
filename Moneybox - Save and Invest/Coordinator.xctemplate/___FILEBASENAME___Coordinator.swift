//___FILEHEADER___

import Foundation

class ___VARIABLE_moduleName___Coordinator: MBCoordinator {
    var childCoordinators = [MBCoordinator]()
    
    var navigationController: MBNavigationController
    var common: WorldProtocol
    let viewFactory: /*@START_MENU_TOKEN@*/___VARIABLE_moduleName___Factory/*@END_MENU_TOKEN@*/
    
    init(navigationController: MBNavigationController, common: WorldProtocol) {
        self.navigationController = navigationController
        self.common = common
        self.viewFactory = /*@START_MENU_TOKEN@*/___VARIABLE_moduleName___Factory(common: common)/*@END_MENU_TOKEN@*/
    }
    
    func start() {
        // Use this method to present your entry screen
    }
}

private extension ___VARIABLE_moduleName___Coordinator {
    // Use this private extension to instantiate and push other View Controllers
}

// Use private extensions to implement cummincation with view models
extension MBMortgageQualifierCoordinator: /*@START_MENU_TOKEN@*/MBMortgagesQualifierScreenViewModelCoordinator/*@END_MENU_TOKEN@*/ {
    /*@START_MENU_TOKEN@*/func didTapSubmitButton() {}/*@END_MENU_TOKEN@*/
}
