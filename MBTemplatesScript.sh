#!/bin/bash

EmptyMBXCTestCase=(
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Test/Empty%20MBXCTestCase%20File.xctemplate/TemplateIcon.png"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Test/Empty%20MBXCTestCase%20File.xctemplate/___FILEBASENAME___Tests.swift"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Test/Empty%20MBXCTestCase%20File.xctemplate/TemplateInfo.plist"
)

ViewModelTestswithMocks=(
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Test/View%20Model%20Tests%20with%20Mocks.xctemplate/___FILEBASENAME___ViewModelTests.swift"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Test/View%20Model%20Tests%20with%20Mocks.xctemplate/___FILEBASENAME___CoordinatorMock.swift"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Test/View%20Model%20Tests%20with%20Mocks.xctemplate/___FILEBASENAME___ViewControllerMock.swift"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Test/View%20Model%20Tests%20with%20Mocks.xctemplate/TemplateInfo.plist"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Test/View%20Model%20Tests%20with%20Mocks.xctemplate/TemplateIcon.png"
)

ScrollableViewController=(
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Scrollable%20View%20Controller.xctemplate/___FILEBASENAME___ViewController.swift"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Scrollable%20View%20Controller.xctemplate/TemplateInfo.plist"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Scrollable%20View%20Controller.xctemplate/TemplateIcon.png"
)

ScrollableVCwithViewModel=(
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Scrollable%20VC%20with%20View%20Model.xctemplate/___FILEBASENAME___ViewController.swift"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Scrollable%20VC%20with%20View%20Model.xctemplate/___FILEBASENAME___ViewModel.swift"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Scrollable%20VC%20with%20View%20Model.xctemplate/TemplateInfo.plist"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Scrollable%20VC%20with%20View%20Model.xctemplate/TemplateIcon.png"
)

Factory=(
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Factory.xctemplate/___FILEBASENAME___Factory.swift"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Factory.xctemplate/TemplateInfo.plist"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Factory.xctemplate/TemplateIcon.png"
)

Coordinator=(
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Coordinator.xctemplate/___FILEBASENAME___Coordinator.swift"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Coordinator.xctemplate/TemplateInfo.plist"
    "https://raw.githubusercontent.com/jmgawecki/MBTemplates/main/Moneybox%20-%20Save%20and%20Invest/Coordinator.xctemplate/TemplateIcon.png"
)

main_destination="/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File Templates/Moneybox - Save and Invest/"
test_destination="/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File Templates/Moneybox - Save and Test/"

fetch_files() {
    local FILES=("${!1}")
    local DESTINATION_PATH="$2/$3"

    sudo mkdir -p "$DESTINATION_PATH"

    for FILE in "${FILES[@]}"; do
        FILENAME=$(basename "$FILE")
        echo
        echo "File name $FILENAME"
        echo "Fetched from $FILE"
        echo "Destination path: $DESTINATION_PATH"
        echo
        sudo curl -J -o "$DESTINATION_PATH/$FILENAME" "$FILE"
    done
}

fetch_files EmptyMBXCTestCase[@] "$test_destination" "Empty MBXCTestCase File.xctemplate"
fetch_files ViewModelTestswithMocks[@] "$test_destination" "View Model Tests with Mocks.xctemplate"
fetch_files ScrollableViewController[@] "$main_destination" "Scrollable View Controller.xctemplate"
fetch_files ScrollableVCwithViewModel[@] "$main_destination" "Scrollable VC with View Model.xctemplate"
fetch_files Factory[@] "$main_destination" "Factory.xctemplate"
fetch_files Coordinator[@] "$main_destination" "Coordinator.xctemplate"

echo
echo -e "\033[32mMoneybox templates fetched and installed in your Xcode\033[0m"
echo -e "\033[33mRestart Xcode for changes to be applied \033[0m"
