//
//  AlertActionCallbackDelegate.h
//  larolp
//
//  Created by Nathan Cooper on 2015-04-15.
//  Copyright (c) 2015 LDWF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface AlertActionCallbackDelegate : NSObject <UIActionSheetDelegate>

- (id) initWithCallback:(void(^)(int)) callback;

@end
