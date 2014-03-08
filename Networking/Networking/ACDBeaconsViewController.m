//
//  ACDBeaconsViewController.m
//  Networking
//
//  Created by Acid Studios on 08/03/14.
//  Copyright (c) 2014 Acid Studios. All rights reserved.
//

#import "ACDBeaconsViewController.h"

@interface ACDBeaconsViewController ()
@property(nonatomic) AFHTTPRequestOperationManager *manager;
@property(nonatomic) UIActivityIndicatorView *activityIndicator;
@end

@implementation ACDBeaconsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect indicatorRect = CGRectMake(0,0, 100, 100);
    CGRect background = CGRectMake(100, 200, 100, 100);
    UIView *cuadroBackground = [[UIView alloc] initWithFrame:background];
    cuadroBackground.backgroundColor = [UIColor blackColor];
    cuadroBackground.alpha = 0.8;
    
    UIView *bloqueo = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    bloqueo.backgroundColor = [UIColor whiteColor];
    bloqueo.alpha = 0;
    
    self.activityIndicator = [[UIActivityIndicatorView alloc]initWithFrame:indicatorRect];
    self.activityIndicator.alpha = 1;
    self.activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    [self.activityIndicator startAnimating];
    
    NSURL *url = [NSURL URLWithString:@"http://localhost:3000"];
    self.manager = [[AFHTTPRequestOperationManager alloc]initWithBaseURL:url];
    [cuadroBackground addSubview:self.activityIndicator];
    [bloqueo addSubview:cuadroBackground];
    
    [self.view addSubview:bloqueo];
    
    // Muestra el indicador de uso de red.
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
    
    [UIView animateWithDuration:0.5 animations:^{
        bloqueo.alpha = 1;
    }];
    
    [self.manager setRequestSerializer:[AFHTTPRequestSerializer serializer]];
    [self.manager setResponseSerializer:[AFHTTPResponseSerializer serializer]];
    
    [self.manager GET:@"/api/beacons" parameters:nil
              success:^(AFHTTPRequestOperation *operation, id responseObject) {
                  NSLog(@"%@", responseObject);
                  beacons = [responseObject objectForKey:@"beacons"];
                  [self.tableView reloadData];
                  [UIView animateWithDuration:1 animations:^{
                      bloqueo.alpha = 0;
                  } completion:^(BOOL finished) {
                      [self.activityIndicator stopAnimating];
                  }];
                  [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];
                  
              }
              failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                  NSLog(@"%@", error);
              }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return beacons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    NSDictionary *beacon = beacons[indexPath.row];
    cell.textLabel.text = [beacon valueForKey:@"name"];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
