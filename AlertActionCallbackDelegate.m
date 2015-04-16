//
//  AlertActionCallbackDelegate.m
//  larolp
//
//  Created by Nathan Cooper on 2015-04-15.
//  Copyright (c) 2015 LDWF. All rights reserved.
//

#import "AlertActionCallbackDelegate.h"

typedef void (^AlertCallback)(int);

@interface AlertActionCallbackDelegate ()

@property(readwrite,copy) AlertCallback callback;

@end

@implementation AlertActionCallbackDelegate

- (id) initWithCallback:(void(^)(int)) callback {
    if (self = [super init]){
        self.callback = callback;
    }
    return self;
}

- (void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    self.callback(buttonIndex);
}

@end
