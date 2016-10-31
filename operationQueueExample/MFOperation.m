//
//  MFOperation.m
//  operationQueueExample
//
//  Created by Mohamad Farhand on 10/22/16.
//  Copyright © 2016 Acceptto. All rights reserved.
//

#import "MFOperation.h"


@interface MFOperation()
@property (nonatomic,strong) dispatch_queue_t  mfQueue;


@end


@implementation MFOperation


-(instancetype)initWithRange:(int)range
{
   
    
    self = [super init];
    if (self) {
        
        
        self.range = range;
    }
    return self;
    
    
}


-(void)main
{
    
    [self doSomthingsWithCompletionBlock:^(BOOL result) {
        NSLog(@"Task with range %d has been finished",self.range);
    }];
    
}



#pragma mark withOutProblem

//-(void)doSomthingsWithCompletionBlock:(void(^)(BOOL result))completion
//{
//    
//    
//        for (int i = 0; i < self.range; i++) {
//            NSLog(@"%@",[NSString stringWithFormat:@"enemurat with range : %d %d",self.range,i]);
//        }
//        completion(YES);
//    
//    
//    
//}




#pragma mark withProblem
-(void)doSomthingsWithCompletionBlock:(void(^)(BOOL result))completion
{
    
    
    dispatch_async([self randomeQueue], ^{
        for (int i = 0; i < self.range; i++) {
            NSLog(@"%@",[NSString stringWithFormat:@"enemurat with range : %d %d",self.range,i]);
        }
        completion(YES);
    });
    

    
}


-(dispatch_queue_t)randomeQueue
{
    return dispatch_queue_create([[[NSUUID UUID]UUIDString]UTF8String], 0);
    
}





@end
