create table product(
    product_id int primary key auto_increment,
    product_name varchar(20) null unique,
    product_price int null,
    product_qty int null,
    created_at timestamp not null
);
