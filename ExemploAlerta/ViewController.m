//
//  ViewController.m
//  ExemploAlerta
//
//  Created by Cristiano Araújo on 26/04/15.
//  Copyright (c) 2015 Cristiano Araújo. All rights reserved.
//

#import "ViewController.h"
@interface ViewController () <UIAlertViewDelegate>
{
    UIAlertView *_alertView;
}
@end

@implementation ViewController
- (IBAction)alert:(id)sender {
    [_alertView show];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _alertView = [[UIAlertView alloc] initWithTitle:@"Meu primeiro Alerta" message:@"Isto é um teste" delegate:self cancelButtonTitle:@"Cancelar" otherButtonTitles:@"OK", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - AlertView delegate
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            NSLog(@"Botão de cancel foi precionado!");
            break;
            
        case 1:
            NSLog(@"Botão de ok foi precionado!");
            break;
            
        default:
            break;
    }
}

@end
