//___FILEHEADER___

import UIKit
import MBBase
import MBCoreUI
import MBCore
import MBComponents

class ___VARIABLE_moduleName___ViewController: MBScrollableViewController {
    // MARK: - Enums
    
    // MARK: - UI
    @UsesAutoLayout
    private var mainStackView = MBStackView(axis: .vertical)
    
    // MARK: - Properties
    let viewModel: /*@START_MENU_TOKEN@*/___VARIABLE_moduleName___ViewModelDelegate/*@END_MENU_TOKEN@*/
    
    // MARK: - Init
    init(viewModel: /*@START_MENU_TOKEN@*/___VARIABLE_moduleName___ViewModelDelegate/*@END_MENU_TOKEN@*/) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifeycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupViews()
        setupConstraints()
    }
}

private extension ___FILEBASENAME___ {
    func setupViews() {
        scrollView.addSubview(mainStackView)
        // Add all subviews here
    }
    
    func setupConstraints() {
        mainStackView.constrainToAllEdges(scrollView, spacing: .standard)
        // Setup additional constraints
    }
    
    func setupUI() {
        // Setup UI, add target buttons, gesture recognisers, etc.
    }
}

extension ___FILEBASENAME___: /*@START_MENU_TOKEN@*/___VARIABLE_moduleName___ViewModelDelegate/*@END_MENU_TOKEN@*/ {
    // Implement ViewModel delegates here to communicate back with your ViewController
}
