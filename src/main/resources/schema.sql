create table if not exists tacofs.Ingredient
(
    id   varchar(4)  not null primary key,
    name varchar(25) not null,
    type varchar(10) not null
) engine = InnoDB
  character set = utf8;

create table if not exists tacofs.Taco
(
    id        bigint      not null primary key auto_increment,
    name      varchar(50) not null,
    createdAt timestamp   not null
) engine = InnoDB,
  character set = utf8;

create table if not exists tacofs.Taco_Ingredients
(
    taco       bigint     not null,
    ingredient varchar(4) not null,
    primary key (taco, ingredient),
    foreign key (taco) references Taco (id),
    foreign key (ingredient) references Ingredient (id)
) engine = InnoDB,
  character set = utf8;

create table if not exists tacofs.Taco_Order
(
    id             bigint      not null primary key auto_increment,
    deliveryName   varchar(50) not null,
    deliveryStreet varchar(50) not null,
    deliveryCity   varchar(50) not null,
    deliveryState  varchar(50) not null,
    deliveryZip    varchar(50) not null,
    ccNumber       varchar(16) not null,
    ccExpiration   varchar(5)  not null,
    ccCVV          varchar(3)  not null,
    placedAt       timestamp   not null
) engine = InnoDB,
  character set = utf8;

create table if not exists tacofs.Taco_Order_Tacos
(
    tacoOrder bigint not null,
    taco      bigint not null,
    primary key (tacoOrder, taco),
    foreign key (tacoOrder) references Taco_Order (id),
    foreign key (taco) references Taco (id)
) engine = InnoDB,
  character set = utf8;
