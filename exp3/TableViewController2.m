//
//  TableViewController2.m
//  exp3
//
//  Created by itisioslab on 01.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import "TableViewController2.h"
#import "ViewController.h"

@interface TableViewController2 ()
{
    NSArray *listObjects2;
    NSInteger ind;
    NSInteger indd;
}
@end

@implementation TableViewController2

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
    
    ind = 4;
    indd = 4;
    
    listObjects2 = [NSArray arrayWithObjects:@"InsadeMan",@"Flypapper",@"Chaos", nil];

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return listObjects2.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdFier2" forIndexPath:indexPath];
    
    cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpeg",ind]];
    ind+=1;
    
    
    // Configure the cell...
    cell.textLabel.text = [listObjects2 objectAtIndex:indexPath.row];
    
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
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController *VC = [[ViewController alloc] init];
    VC = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    VC.value = [listObjects2 objectAtIndex:indexPath.row];
    
    NSInteger inf = indexPath.row + 4;
    VC.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpeg",inf]];

    if(inf == 4){
        VC.text = @"В самом центре Нью-Йорка посреди дня совершается ограбление банка. Идеальное ограбление, потому что в итоге, после нескольких дней осады у полиции нет ни улик, ни пострадавших, ни подозреваемых, ни, собственно, того, что называется «составом преступления». Детективы слишком поздно начинают понимать, что все это время их просто водили за нос, и что многое в этой истории совсем не то, чем кажется.";
    }
    if(inf == 5){
        VC.text = @"Перед самым закрытием в банк врываются две группы грабителей. Посетители и работники банка оказываются между двух огней. Один из посетителей старается примирить представителей двух криминальных групп — ведь это единственный шанс выжить для тех, кто оказался в банке, а для него шанс произвести впечатление на девушку-кассира, в которую он влюбился с первого взгляда. Постепенно герой понимает, что, похоже, все кроме него оказались в этом банке в момент ограбления не случайно.";
    }
    if(inf == 6){
        VC.text = @"Во время ситуации на мосту одной дождливой ночью, инспектор Йорк ненароком застрелил молодую девушку-заложницу, а его напарнику инспектору Коннерсу (Джейсон Стэтхем) пришлось застрелить оказавшего сопротивление захватчика. Гибель невинной получает внимание СМИ, и у полиции не остаётся выбора кроме как временно отстранить Коннерса от исполнения обязанностей.";
    }
    indd+=1;
}


@end
