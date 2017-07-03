//
//  ContarViewController.m
//  XNexosTest
//
//  Created by Juan Manuel Moreno on 3/7/17.
//  Copyright © 2017 uzupis. All rights reserved.
//

#import "ContarViewController.h"

@interface ContarViewController ()

@property(weak, nonatomic) NSString *resultado;

@end

@implementation ContarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"CONTANDO");
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
- (IBAction)contar:(id)sender {
    
    _resultado = @"";
    [self contarCosas:@"aeiou" withText:@"Vocales"];
    [self contarCosas:@"0123456789" withText:@"Digitos"];
}

// Cuenta cosas
-(void) contarCosas:(NSString *) set4NSChar withText:(NSString *)text {
 
    if ([_txtEscribir.text isEqual: @""]) {
        
        _resultado = @"Falta escribir la palabra";
    } else {
        
        NSCharacterSet *cosas = [NSCharacterSet characterSetWithCharactersInString:set4NSChar];
        
        NSString *letra = @""; // letra
        NSMutableString *conCosas = [[NSMutableString alloc] init];
        for (int i = 0; i < _txtEscribir.text.length; i++) { // Recorremos array de izquierda a derecha
            
            if ( [cosas characterIsMember:[_txtEscribir.text characterAtIndex:i]] ) {
                
                letra = [_txtEscribir.text substringWithRange:NSMakeRange(i, 1)]; // letra
                [conCosas appendString:letra];
            }
        }
        
        NSLog(@"conCosas es %@", conCosas);
        
        _resultado = [NSString stringWithFormat:@"%@ %@ = %lu ", _resultado, text, (unsigned long)conCosas.length];
    }
    _lblResultado.text = _resultado;

}

@end
