//
//  MFOperation.h
//  operationQueueExample
//
//  Created by Mohamad Farhand on 10/22/16.
//  Copyright © 2016 Acceptto. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MFOperation : NSOperation


@property (nonatomic,assign) int range;
-(instancetype)initWithRange:(int)range;

@end
