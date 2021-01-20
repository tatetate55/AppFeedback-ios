#import <Foundation/Foundation.h>

NSBundle* AppFeedback_SWIFTPM_MODULE_BUNDLE() {
    NSURL *bundleURL = [[[NSBundle mainBundle] bundleURL] URLByAppendingPathComponent:@"AppFeedback_AppFeedback.bundle"];
    return [NSBundle bundleWithURL:bundleURL];
}