//
//  ViewController.m
//  operationQueueExample
//
//  Created by Mohamad Farhand on 10/22/16.
//  Copyright © 2016 Acceptto. All rights reserved.
//

#import "ViewController.h"
#import "MFOperation.h"
@interface ViewController ()


@property (nonatomic,strong) NSOperationQueue * myQueue;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    __block MFOperation * op1 = [[MFOperation alloc]initWithRange:20000];
    __block MFOperation * op2 = [[MFOperation alloc]initWithRange:15];
    __block MFOperation * op3 = [[MFOperation alloc]initWithRange:8];

    
    
        [self.myQueue addOperation:op1];
        [self.myQueue addOperation:op2];
        [self.myQueue addOperation:op3];
    

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSOperationQueue *)myQueue

{
    if (!_myQueue) {
        _myQueue = [[NSOperationQueue alloc]init];
        _myQueue.name = @"MFQueue";
        _myQueue.maxConcurrentOperationCount = 1;
    }
    return _myQueue;

}



@end
