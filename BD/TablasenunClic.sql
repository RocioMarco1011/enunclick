-- get_constraints_drop

-- get_permissions_drop

-- get_view_drop

-- get_schema_drop

-- get_smallpackage_pre_sql

-- get_schema_create
create table OrdersTable (
   orders_id       integer not null,
   order_addresses varchar         ,
   references      varchar         ,
   dates           date            ,
   times           time            ,
   fees            integer         ,
   status          varchar         ,
   orders_GPS      text            ,
   constraint pk_OrdersTable primary key (orders_id)
)   ;
create table ProductsTable (
   order_id           integer not null,
   order_quantities   integer         ,
   order_descriptions text            ,
   order_prices       integer         ,
   constraint pk_ProductsTable primary key (order_id)
)   ;
create table SuppliersTable (
   supplier_id        integer not null,
   supplier_names     varchar         ,
   supplier_addresses varchar         ,
   supplier_phones    integer         ,
   constraint pk_SuppliersTable primary key (supplier_id)
)   ;
create table DeliveriesTable (
   delivery_man_id        integer not null,
   delivery_Man_Names     varchar         ,
   delivery_man_schedules text            ,
   delivery_man_days      text            ,
   constraint pk_DeliveriesTable primary key (delivery_man_id)
)   ;
create table DailyRegistersTable (
   register_id          integer not null,
   register_status      varchar         ,
   daily_initial_cashes integer         ,
   daily_final_cashes   integer         ,
   register_dates       date            ,
   constraint pk_DailyRegistersTable primary key (register_id)
)   ;
create table CostumersTable (
   costumer_id        Integer not null,
   costumer_Names     varchar         ,
   costumer_addresses varchar         ,
   costumer_gps       text            ,
   costumer_phones    integer         ,
   constraint pk_CostumersTable primary key (costumer_id)
)   ;
create table PaymentsTable (
   payment_id       integer not null,
   payment_methods  varchar         ,
   payment_receipts text            ,
   constraint pk_PaymentsTable primary key (payment_id)
)   ;
create table PreferenceTables (
   preferents_id          integer not null,
   preferent_descriptions text            ,
   preferent_fees         integer         ,
   constraint pk_PreferenceTables primary key (preferents_id)
)   ;
create table OffersTable (
   offers_id          integer not null,
   offer_Names        varchar         ,
   offer_descriptions text            ,
   offer_Start_Dates  date            ,
   offer_Final_Dates  date            ,
   offer _Prices      integer         ,
   constraint pk_OffersTable primary key (offers_id)
)   ;
create table AdsTable (
   ads_id           integer not null,
   ads_names        varchar         ,
   ads_descriptions text            ,
   ads_start_dates  date            ,
   ads_end_dates    date            ,
   constraint pk_AdsTable primary key (ads_id)
)   ;
create table UsersTable (
   users_Id  integer not null,
   users     varchar         ,
   passwords varchar         ,
   constraint pk_UsersTable primary key (users_Id)
)   ;
create table RolesTable (
   roles_Id integer not null,
   roles    varchar         ,
   constraint pk_RolesTable primary key (roles_Id)
)   ;
create table ZonesTable (
   zones_id      integer not null,
   initial_zones text            ,
   final_zones   text            ,
   descriptions  text            ,
   constraint pk_ZonesTable primary key (zones_id)
)   ;
create table LogisticsTable (
   logistics_id integer not null,
   constraint pk_LogisticsTable primary key (logistics_id)
)   ;

-- get_view_create

-- get_permissions_create

-- get_inserts

-- get_smallpackage_post_sql

-- get_associations_create