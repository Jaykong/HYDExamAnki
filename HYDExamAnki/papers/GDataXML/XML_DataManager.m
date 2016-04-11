//
//  XML_DataManager.m
//  HYDExamAnki
//
//  Created by hongyandong on 16/4/11.
//  Copyright © 2016年 hongyandong. All rights reserved.
//

#import "XML_DataManager.h"

@implementation XML_DataManager

+(void) test {
    
    NSArray *xmlPaths = [[NSBundle mainBundle] pathsForResourcesOfType:@"xml" inDirectory:nil];
    for (NSString *path in xmlPaths) {
        NSData *xmlData = [NSData dataWithContentsOfFile:path];
        GDataXMLDocument *document = [[GDataXMLDocument alloc] initWithData:xmlData options:0 error:nil];
        NSArray *questionNodes = [document nodesForXPath:@"//question" error:nil];
        
    
    
        for (GDataXMLElement *node in questionNodes) {
            NSArray *titles = [node elementsForName:@"title"];
            NSString *title = [titles[0] stringValue];
            NSLog(@"%@",title);
        
        }
    }
}

@end
