//
//  ViewController.m
//  mytest
//
//  Created by pcl on 9/10/22.
//

#import "ViewController.h"
#import "CoreTextView.h"

@interface ViewController ()
@property UITextField *usernameText;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title=@"ViewController";
    self.view.backgroundColor=[UIColor colorWithRed:0.592157 green:0.760784 blue:1 alpha:1];

    float width = self.view.frame.size.width;
    float height = self.view.frame.size.height-self.navigationController.navigationBar.frame.origin.y-self.navigationController.navigationBar.frame.size.height;
    float originY=self.navigationController.navigationBar.frame.origin.y+self.navigationController.navigationBar.frame.size.height;

    CGRect usernameTextRect=CGRectMake(width*0.3, height*0.33+originY, width*0.6, width*0.09);
    self.usernameText=[[UITextField alloc] initWithFrame:usernameTextRect];
    self.usernameText.backgroundColor=[UIColor whiteColor];
    self.usernameText.placeholder=@"请输入用户名";
    [self.usernameText setReturnKeyType:UIReturnKeyDone];
    [self.usernameText addTarget:self action:@selector(textFieldDoneEditing:) forControlEvents:UIControlEventEditingDidEndOnExit];
    [self.view addSubview:_usernameText];

    CGRect loginButtonRect=CGRectMake(width*0.1, height*0.5+originY, width*0.8, width*0.09);
    UIButton *loginButton=[UIButton buttonWithType:UIButtonTypeSystem];
    [loginButton setFrame:loginButtonRect];
    [loginButton addTarget:self action:@selector(login:) forControlEvents:UIControlEventTouchUpInside];
    [loginButton setTitle:@"login" forState:UIControlStateNormal];
    [loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [loginButton setBackgroundColor:[UIColor colorWithRed:0.219608 green:0.45098 blue:0.996078 alpha:1]];
    [self.view addSubview:loginButton];
    
    UIButton *tabButton = [UIButton buttonWithType: UIButtonTypeSystem];
    [tabButton setFrame: CGRectMake(0.0, 0.0, 40.0, 40.0)];
    [tabButton setTitle: @"TAB" forState: UIControlStateNormal];
    [tabButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [tabButton setBackgroundColor: [UIColor whiteColor]];
    [tabButton addTarget: self action: @selector(pressTab) forControlEvents: UIControlEventTouchUpInside];

    UIButton *leftButton = [UIButton buttonWithType: UIButtonTypeSystem];
    [leftButton setFrame: CGRectMake(40.0, 0.0, 40.0, 40.0)];
    [leftButton setTitle: @"←" forState: UIControlStateNormal];
    [leftButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [leftButton setBackgroundColor: [UIColor whiteColor]];
    [leftButton addTarget: self action: @selector(pressLeft) forControlEvents: UIControlEventTouchUpInside];

    UIButton *rightButton = [UIButton buttonWithType: UIButtonTypeSystem];
    [rightButton setFrame: CGRectMake(80.0, 0.0, 40.0, 40.0)];
    [rightButton setTitle: @"→" forState: UIControlStateNormal];
    [rightButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [rightButton setBackgroundColor: [UIColor whiteColor]];
    [rightButton addTarget: self action: @selector(pressRight) forControlEvents: UIControlEventTouchUpInside];

    UIView *inputView = [[UIView alloc] initWithFrame:CGRectMake(10.0, 0.0, 310.0, 40.0)];
    [inputView setBackgroundColor:[UIColor lightTextColor]];
//    [inputView setAlpha: 1];
    [inputView addSubview:tabButton];
    [inputView addSubview:leftButton];
    [inputView addSubview:rightButton];
    [self.usernameText setInputAccessoryView:inputView];
}

- (void)pressTab{
    [self.usernameText insertText:@"\t"];
}

- (void)pressLeft{
    [self.usernameText insertText:@"\x1b[D"];
//    [self.usernameText insertText:[NSString stringWithFormat:@"\x1b%c%c", applicationCursor ? 'O' : '[', 'D']];
}

- (void)pressRight{
    [self.usernameText insertText:@"\x1b[C"];
//    [self.usernameText insertText:[NSString stringWithFormat:@"\x1b%c%c", applicationCursor ? 'O' : '[', 'C']];
}

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//    CGFloat width = UIScreen.mainScreen.bounds.size.width;
//    CGFloat height = UIScreen.mainScreen.bounds.size.height;
//    CoreTextView *view = [[CoreTextView alloc] initWithFrame:CGRectMake(0, 100, width, height-100)];
////    CoreTextView *view = [[CoreTextView alloc] init];
//    view.backgroundColor = [UIColor systemCyanColor];
//
//
//    [self.view addSubview:view];
//
////    NSString *family;
////    NSString *font;
////    for (family in UIFont.familyNames) {
////        NSLog(@"family: %@", family);
////        for (font in [UIFont fontNamesForFamilyName:family]) {
////            NSLog(@"font: %@", font);
////        }
////    }
//}

- (void)login:(id)sender{
}

- (void)textFieldDoneEditing:(id)sender{
    [sender resignFirstResponder];
}

-(void)textViewButtonPressed
{
//    [self.usernameText resignFirstResponder];
}


@end
