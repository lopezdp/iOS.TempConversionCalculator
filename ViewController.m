//
//  ViewController.m
//  Sept21.App
//
//  Created by David P. Lopez on 9/26/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *fahrenInput;
@property (weak, nonatomic) IBOutlet UITextField *celsOutput;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertBtnPressed:(UIButton *)sender {
    double c, f;
    //get F input value
    f = [self.fahrenInput.text doubleValue];
    
    //Fahren to Celsius
    //C = (F - 32) × 5/9
    
    c = (f - 32) * (5.0/9);
    
    //output converted temp
    NSString *convTemp = [NSString stringWithFormat:@"%2.4f", c];
    
    self.celsOutput.text = convTemp;
}

- (IBAction)reverseBtnPressed:(UIButton *)sender {
    double c, f;
    //get C input value
    c = self.celsOutput.text.doubleValue;
    
    //Celsius to Fahren
    //F = C × 9/5 + 32
    f = c * (9.0/5) + 32;
    
    //output reverse converted temp
    NSString *revTemp = [NSString stringWithFormat:@"%2.4f", f];
    
    self.fahrenInput.text = revTemp;
}

- (IBAction)backgroundTap:(id)sender
{
    [self.fahrenInput resignFirstResponder];
    [self.celsOutput resignFirstResponder];
}



@end
