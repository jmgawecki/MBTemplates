//___FILEHEADER___

import MBAnalytics
import MBComponents
import MBCoreUI
import MBStrings
import MBNetworking
import UIKit

// MARK: - Protocol
protocol ___FILEBASENAME___Protocol {
    var viewConfiguration: ___FILEBASENAME___ViewConfiguration { get }
    func handle(_ event:___FILEBASENAME___.Event)
}

protocol ___FILEBASENAME___Coordinator: MBGenericCoordinatorDelegate {
    // Place protocols here that should be implemented by Coordinator
}

protocol ___FILEBASENAME___Delegate: AnyObject {
    // Place protocols here that shoud be implemented by View Controller
}

// MARK: - View Configuration
struct ___FILEBASENAMEASIDENTIFIER___ViewConfiguration {
    // Implement properties that should be visible for the ViewController
}

class ___FILEBASENAME___: NSObject, ___FILEBASENAME___Protocol {
    // MARK: - Enums
    enum Event {
        // List events here that should be triggered by the View Controller
    }

    // MARK: - Property
    var viewConfiguration: MBNewViewModelViewConfiguration {
        MBNewViewModelViewConfiguration()
    }

    weak var coordinator: ___FILEBASENAME___Coordinator?
    weak var delegate: ___FILEBASENAME___Delegate?
    
    // MARK: - Initialiser
    init(coordinator: ___FILEBASENAME___Coordinator) {
        self.coordinator = coordinator
        super.init()
    }
    
    // MARK: - Internal methods
    func handle(_ event: ___FILEBASENAME___.Event) {
        track(event)
        // switch over events here
    }
}

// MARK: - Private methods
private extension ___FILEBASENAME___ {
    func track(_ event: ___FILEBASENAME___.Event) {
        // let analyticsExtraDetail = AnalyticsExtraDetail(propertyDic: [AnalyticsPropertyKeys.: ""])
        switch event {
        default:
            break
            // analyticsManager.trackEvent(.screen_view_mortgages_qualifier_screen, extra: analyticsExtraDetail)
        }
    }
}