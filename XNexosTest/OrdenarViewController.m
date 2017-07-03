//
//  OrdenarViewController.m
//  XNexosTest
//
//  Created by Juan Manuel Moreno on 3/7/17.
//  Copyright © 2017 uzupis. All rights reserved.
//

#import "OrdenarViewController.h"

@interface OrdenarViewController ()

@end

@implementation OrdenarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"HOLA");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)ordenar:(id)sender {

    NSLog(@"Aqui ordeno %@", _palabraAntes.text);
    
//    const char *palabra2Array = [_palabraAntes.text UTF8String];
    
    NSMutableArray *palabra2Array = [[NSMutableArray alloc] init]; // array
    NSMutableString *palabraDespues = [[NSMutableString alloc] init]; // palabra nueva

    NSString *letra = @""; // letra
    for (int i = _palabraAntes.text.length - 1; i >= 0; i--) { // Recorremos array de derecha a izquierda
    
        letra = [_palabraAntes.text substringWithRange:NSMakeRange(i, 1)]; // letra
        [palabra2Array addObject:letra];
        [palabraDespues appendString:letra];
    }
    
    // Mostramos
    _palabraDespues.text = palabraDespues;
    NSLog(@"Mi palabra es %@", palabraDespues);
}

@end
