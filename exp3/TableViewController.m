//
//  TableViewController.m
//  exp3
//
//  Created by itisioslab on 01.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@interface TableViewController ()
{
    NSArray *listObjects1;
    NSInteger ind;

}

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ind = 1;
    
    listObjects1 = [NSArray arrayWithObjects:@"Last Vegas",@"The Family",@"Internship", nil];
    
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
    return listObjects1.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdFier" forIndexPath:indexPath];
    
    cell.imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpeg",ind]];
    ind+=1;

    
    cell.textLabel.text = [listObjects1 objectAtIndex:indexPath.row];
    
    return cell;
}



#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController *VC = [[ViewController alloc] init];
    VC = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    VC.value = [listObjects1 objectAtIndex:indexPath.row];
    NSInteger inf = indexPath.row +1;
    
    VC.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpeg",inf]];
    
    if(inf == 1){
        VC.text = @"Четверо пожилых мужчин отправляются в Лас-Вегас, чтобы бурно провести традиционную вечеринку, предшествующую вступлению в брак одного из них. Закоренелый холостяк Билли (Дуглас) планирует жениться на женщине, которая вдвое его моложе. В весёлой поездке его сопровождают Пэдди (Де Ниро), Арчи (Фримен) и Сэм (Клайн). Похождения немолодых искателей приключений становятся основой многочисленных комедийных ситуаций.";
    }
    if(inf == 2){
        VC.text = @"История Манцони — известной мафиозной семьи, переехавшей в Нормандию по программе защиты свидетелей. Хоть они стараются делать всё возможное, чтобы приспособиться, старые привычки умирают с трудом, а мафия ищет их.";
    }
    if(inf == 3){
        VC.text = @"Лучших друзей и опытных коммивояжеров, Билли и Ника, увольняют из-за того, что весь мир теперь компьютеризован. И это, в свою очередь, подводит главных героев к поискам работы, которая вопреки всем ожиданиям появляется в самой популярной компании нового поколения. Это компания «Google». Чуть позже парням удается попасть туда на стажировку. И теперь, чтобы получить работу, им нужно обойти множество компьютерных гениев, если они хотят достичь своей мечты.";
    }
    
    
    
}


@end
