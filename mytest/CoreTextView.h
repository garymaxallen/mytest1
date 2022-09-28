//
//  CoreTextView.h
//  TextInput
//
//  Created by Kishikawa Katsumi on 10/11/21.
//  Copyright 2010 Kishikawa Katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoreTextView : UIView<UITextInput> {
    UIColor *textColor;
    UIFont *font;
    NSMutableString *textStore;
    NSString *currentMarkedText;
    NSRange currentMarkedRange;
    NSRange currentMarkedSelectedRange;
    
    UITextRange *selectedTextRange;
    UITextInputStringTokenizer *tokenizer;
}

@property (nonatomic, retain) UIColor *textColor;
@property (nonatomic, retain) UIFont *font;
@property (nonatomic, retain) NSMutableString *textStore;
@property (nonatomic, retain) NSString *currentMarkedText;

@property (nonatomic, readonly) UIView *textInputView;
@property (nonatomic) UITextStorageDirection selectionAffinity;

@end
