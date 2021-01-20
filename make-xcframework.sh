#!/usr/bin/env bash

# Build XCFramework
# make xcarchive (iOS/iPadOS simulator)
xcodebuild 'ENABLE_BITCODE=YES' 'BITCODE_GENERATION_MODE=bitcode' 'OTHER_CFLAGS=-fembed-bitcode' 'BUILD_LIBRARY_FOR_DISTRIBUTION=YES' 'SKIP_INSTALL=NO' archive -project AppFeedback.xcodeproj -scheme 'AppFeedback' -destination 'generic/platform=iOS Simulator' -configuration 'Release' -archivePath 'XCFramework/XCArchives/ual-ios-simulator.xcarchive'

# make xcarchive (iOS/iPadOS device)
xcodebuild 'ENABLE_BITCODE=YES' 'BITCODE_GENERATION_MODE=bitcode' 'OTHER_CFLAGS=-fembed-bitcode' 'BUILD_LIBRARY_FOR_DISTRIBUTION=YES' 'SKIP_INSTALL=NO' archive -project AppFeedback.xcodeproj -scheme 'AppFeedback' -destination 'generic/platform=iOS' -configuration 'Release' -archivePath 'XCFramework/XCArchives/ual-ios.xcarchive'

# make xcframework with xcarchives
xcodebuild -create-xcframework -framework XCFramework/XCArchives/ual-ios.xcarchive/Products/Library/Frameworks/AppFeedback.framework -framework XCFramework/XCArchives/ual-ios-simulator.xcarchive/Products/Library/Frameworks/AppFeedback.framework -output XCFramework/AppFeedback.xcframework
