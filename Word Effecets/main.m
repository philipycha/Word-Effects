//
//  main.m
//  Word Effecets
//
//  Created by Philip Ha on 2016-09-05.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int choice;
        char inputChars[255];
        
        
        while (YES){
        
        
        printf("input a string: ");
        fgets(inputChars, 255, stdin);
        
            printf("\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n");
       
            
            printf("Input a number.\n");
            scanf("%i", &choice);
            
            char newline;
            
            scanf("%c", &newline);
            
            printf("you chose option %d\n", choice);
            
            printf("Your string is %s\n", inputChars);
            
            //convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
           
            NSString *inputString2 = @"10";
            int value;
            
        switch (choice) {
            case 1:
                inputString = [inputString uppercaseString];
                
                break;
            case 2:
                inputString = [inputString lowercaseString];
                
               break;
             case 3:
                
                value = [inputString2 intValue];
                
            
               break;
            case 4:
                inputString = [inputString stringByAppendingString:@", eh?"];
              
                break;
            case 5:
                if ([inputString hasSuffix:@"?"]){
                    NSLog(@"I don't know.");
                }
                else if ([inputString hasSuffix:@"!"]) {
                    NSLog(@"Whoa, calm down!");
                }
                
                break;
            case 6:
                inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                
                break;
            default:
                break;
        }
            
 NSLog(@"Output is: %@\n", inputString);
        
    }
        
    return 0;
        
}

}
