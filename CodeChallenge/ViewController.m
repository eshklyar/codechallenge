//
//  ViewController.m
//  CodeChallenge
//
//  Created by Edik Shklyar on 10/2/14.
//  Copyright (c) 2014 Edik Shklyar. All rights reserved.
//

#import "ViewController.h" 

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *valueOne;
@property (weak, nonatomic) IBOutlet UITextField *valueTwo;
@property (weak, nonatomic) IBOutlet UINavigationItem *navBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *topBar;
@property (weak, nonatomic) IBOutlet UIWebView *webDisplay;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
/*  NSURL *url =[NSURL URLWithString:@"http://mobilemakers.co"];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webDisplay loadRequest:urlRequest];
*/
    self.topBar.title = @"http://mobilemakers.co";
}


- (IBAction)calValue:(id)sender {

    NSInteger firstNumber = self.valueOne.text.integerValue;

    NSInteger secondNumber = self.valueTwo.text.integerValue;

    NSInteger result = (firstNumber * secondNumber);

    if (result % 5 ==0) {
        self.topBar.enabled = false;
    }

    NSString* calResult = [NSString stringWithFormat:@"%ld", (long)result];

    self.navBar.title = calResult;
    [self.valueOne resignFirstResponder];
    [self.valueTwo resignFirstResponder];
    }

- (BOOL) textFieldShouldReturn:(UITextField *)valueOne
{
    NSLog(@"value 1");
    [self.valueOne resignFirstResponder];
    [self.valueTwo resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.


}

@end
