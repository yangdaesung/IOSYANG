//
//  ViewController.m
//  Thread1111
//
//  Created by Yang on 2016. 11. 11..
//  Copyright © 2016년 Yang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *timeLb;
//Thread
@property (nonatomic) NSThread *timeThread;
@property NSInteger ThreadFirst;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
//    
//    dispatch_queue_t mainQueue = dispatch_get_main_queue();
//    dispatch_queue_t global = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    
//    dispatch_async(dispatch_get_main_queue(), ^{
//        for (NSInteger i = 0; i < 100; i++) {
//            for (NSInteger j = 0; j < 100; j++) {
//                
//            }
//            NSLog(@"hiMain %ld",i);
//        }
//    });
//
//    dispatch_async(mainQueue, ^{
//        NSLog(@"after For");
//    });
//    
//    dispatch_async(global, ^{
//        NSLog(@"hihihihi");
//    });
//    
//    
//   dispatch_queue_t queue = dispatch_queue_create("com.wing.test", DISPATCH_QUEUE_CONCURRENT);
//    dispatch_sync(queue, ^{NSLog(@"call 1"); });
//    dispatch_sync(queue, ^{NSLog(@"call 2"); });
//    dispatch_sync(queue, ^{NSLog(@"call 3"); });
//    dispatch_sync(queue, ^{NSLog(@"call 4"); });
//    dispatch_sync(queue, ^{NSLog(@"call 5"); });
    
//    dispatch_async(queue, ^{
//        for (NSInteger i = 0; i < 10; i++) {
//            for (NSInteger j = 0; j < 10; j++) {
//                NSLog(@"%ld",i);
//            }
//        }
//    });
//    
    dispatch_queue_t myQueue = dispatch_queue_create("com.wing.test", DISPATCH_QUEUE_CONCURRENT);
    double delaInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delaInSeconds *NSEC_PER_SEC));
    dispatch_after(popTime, myQueue, ^{NSLog(@"call 1");});
    dispatch_async(myQueue, ^{NSLog(@"call 2");});
    dispatch_async(myQueue, ^{NSLog(@"call 3");});
    dispatch_async(myQueue, ^{NSLog(@"call 4");});
    dispatch_async(myQueue, ^{NSLog(@"call 5");});
    dispatch_async(myQueue, ^{NSLog(@"call 6");});
       dispatch_async(myQueue, ^{NSLog(@"call 7");});
       dispatch_async(myQueue, ^{NSLog(@"call 8");});
       dispatch_async(myQueue, ^{NSLog(@"call 9");});
       dispatch_async(myQueue, ^{NSLog(@"call 10");});
    dispatch_barrier_async(myQueue, ^{NSLog(@"/-----------------/");});
    
       dispatch_async(myQueue, ^{NSLog(@"call 11");});
       dispatch_async(myQueue, ^{NSLog(@"call 12");});
       dispatch_async(myQueue, ^{NSLog(@"call 13");});
       dispatch_async(myQueue, ^{NSLog(@"call 14");});
       dispatch_async(myQueue, ^{NSLog(@"call 15");});
       dispatch_async(myQueue, ^{NSLog(@"call 16");});
       dispatch_async(myQueue, ^{NSLog(@"call 17");});
       dispatch_async(myQueue, ^{NSLog(@"call 18");});
       dispatch_async(myQueue, ^{NSLog(@"call 19");});
    dispatch_async(myQueue, ^{NSLog(@"call 20");});
    
}

- (void)viewDidAppear:(BOOL)animated
{

  
    
    
}

- (void)changeText:(NSNumber *)second
{
    NSInteger sec = second.integerValue;
    [self.timeLb setText:[NSString stringWithFormat:@"%ld",(long)sec]];
}

- (void)startTime
{
    if (self.timeThread == nil) {
        self.timeThread = [[NSThread alloc] initWithTarget:self
                                                  selector:@selector(startThread) object:nil];
        [self.timeThread start];
    }
    
    
}

- (void)startThread
{
    while(!self.timeThread.cancelled) {
        
        
        [self performSelectorOnMainThread:@selector(changeText:)
                               withObject:[NSNumber numberWithInteger:self.ThreadFirst]
                            waitUntilDone:YES];
        sleep(1);
        self.ThreadFirst++;
    }
    self.timeThread = nil;
}



    



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
