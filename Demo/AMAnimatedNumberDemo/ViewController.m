//
//  ViewController.m
//
//  Copyright (c) 2015 Mellong Lau
//  https://github.com/MellongLau/AMAnimatedNumber
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

#import "ViewController.h"
#import "AMAnimatedNumber.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet AMAnimatedNumber *animateNumber;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UISwitch *swtich;

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

- (IBAction)onAlignSwitchChanged:(UISegmentedControl *)sender {
    [self.view endEditing:YES];
    [_animateNumber setAlignment:sender.selectedSegmentIndex];
}

- (IBAction)onSetNumberButtonClicked:(UIButton *)sender {
    [self.view endEditing:YES];
    
    [_animateNumber setTextFont:[UIFont boldSystemFontOfSize:26]];
    [_animateNumber setTextColor:[UIColor brownColor]];
    
    [_animateNumber setNumbers:_textField.text
                      animated:_swtich.on
                     direction:_segmentedControl.selectedSegmentIndex == 0 ? AMAnimateNumberDirectionUp:AMAnimateNumberDirectionDown];
    _animateNumber.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _animateNumber.layer.borderWidth = 1.0;
    _textField.keyboardType = UIKeyboardTypeNumberPad;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}

- (IBAction)onSwitchChanged:(UISwitch *)sender {
    [self.view endEditing:YES];
}

@end
