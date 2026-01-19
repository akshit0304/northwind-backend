using bd.bModel as db from '../db/schema';

service CatalogService {
    @readonly entity Products as projection on db.master.Products;
    entity Categories as projection on db.master.Categories;
    entity Customers as projection on db.master.Customers;
}
