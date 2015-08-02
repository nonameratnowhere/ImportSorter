//
//  SwiftImportSorterRunner.h
//  ImportSorter
//
//  Created by jun.hashimoto on 2015/03/28.
//  Copyright (c) 2015年 Jun Hashimoto. All rights reserved.
//

// :: Framework ::
#import <AppKit/AppKit.h>
#import <Foundation/Foundation.h>
// :: Other ::
#import "XcodeComponents.h"
#import "BaseImportSorterRunner.h"

@interface SwiftImportSorterRunner : BaseImportSorterRunner
- (instancetype)initWithTextView:(NSTextView *)textView document:(IDESourceCodeDocument *)document;
- (void)run;
@end
