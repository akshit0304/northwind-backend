using {
    cuid,
    managed
} from '@sap/cds/common';

namespace bd.bModel;

context master {

    entity Products : cuid, managed {
        ProductID       : Integer;
        ProductName     : String(40);
        QuantityPerUnit : String(40);
        UnitPrice       : Decimal(15, 2);
        UnitsInStock    : Int16;
        UnitsOnOrder    : Int16;
        ReorderLevel    : Int16;
        Discontinued    : Int16 not null default false;

        // Foreign Key IDs
        SupplierID      : Integer;
        CategoryID      : Integer;

        // Associations
        category        : Association to Categories;
        supplier        : Association to Suppliers;
        Order_Details       : Composition of many transactional.OrderDetails on Order_Details.product = $self;
    };
    
    entity Categories : cuid, managed {
        CategoryName : String(100) not null;
        CategoryID   : Int16 default 1;
        Description  : String(200);
        products     : Association to many Products
                           on products.category = $self;
    };

    entity Suppliers : cuid, managed {
        products     : Association to many Products
                           on products.supplier = $self;
        CompanyName  : String(150) not null;
        ContactName  : String(100) not null;
        ContactTitle : String(100) not null;
        // ContactTitleName : type of CompanyName = ContactTitle || ' ' || ContactName;
        Address      : String(250);
        City         : String(50);
        PostalCode   : String(15);
        Country      : String(50);
        Phone        : String(20); // need to validation of mobile number (set using event handlers)
        Fax          : String(30);
        Website      : String(50) default 'www.notexist.com'
    }

    entity Customers : cuid, managed {
        CustomerID   : String(15);
        CompanyName  : String(100) not null;
        ContactName  : String(100);
        ContactTitle : String(100);
        Address      : String(250);
        City         : String(50);
        Country      : String(50);
        PostalCode   : String(15);
        Phone        : String(20);
        Fax          : String(30);
        orders : Association to many transactional.Orders on orders.customer =$self;
    }

    entity Shippers : cuid,managed{
        ShipperID: Int16;
        CompanyName :String(100) NOT NULL;
        Phone: String(20) DEFAULT '9099973246';
        orders : Association to many transactional.Orders on orders.ShipVia =$self;
    }

    entity Regions : cuid,managed {
        RegionID:Int16;
        Description :String(250) NOT NULL;
        territories : Association to many Territories on territories.region =$self;
    }

    entity Territories : cuid,managed {
        RegionID: Int16;
        TerritoryID :Int16;
        region: Association to Regions;
        employees : Association to many  Employees on employees.territory =$self;
        Description :String(250) NOT NULL;
    }

    entity Employees : cuid,managed {
  EmployeeID :Int16;
  reportsTo : Association to Employees;
  territory :Association to Territories;
  LastName :String(50);
  FirstName :String(50);
  Title :String(50);
  TitleOfCourtesy :String(50);
  BirthDate :DateTime  NOT NULL;
  HireDate: DateTime  NOT NULL;
  Address :String(200);
  City: String(50);
  PostalCode: String(20);
  Country: String(50);
  HomePhone: String(50);
  Extension :String(20);
  Notes :String(250);
    }


};

context transactional {

    entity OrderDetails : cuid,managed {
        order     : Association to transactional.Orders;
        product   : Association to master.Products;
        UnitPrice : Decimal(15, 2);
        Quantity  : Int16;
        Discount  : Decimal(5, 2);
        ProductID :Int16;
        OrderID : Int16;
    }

    entity Orders : cuid, managed {
        orderIDs        : Composition of many OrderDetails
                              on orderIDs.order = $self; //how to set product id
        customer        : Association to master.Customers; // FK -> Customers.CustomerID
        employee        : Association to master.Employees; // FK -> Employees.EmployeeID
        ShipVia         : Association to master.Shippers; // FK -> Shippers.ShipperID
        // product        : Association to master.Products;
        OrderDate       : DateTime not null;
        RequiredDate    : DateTime;
        ShippedDate     : DateTime;
        Freight         : Decimal(15, 2);
        ShipName        : String(100);
        ShipAddress     : String(250);
        ShipCity        : String(50);
        ShipPostalCode  : String(15);
        ShipCountry     : String(50);
        OrderID         : Int16;
        CustomerID      : Int16;
        EmployeeID      : Int16;
        ShipViaID :Int16;
        
        QuantityPerUnit : String(20);
        UnitPrice       : Decimal(15, 2);
        UnitsInStock    : Int16;
        UnitsOnOrder    : Int16;
        ReorderLevel    : Int16;
        Discontinued    : Int16;
    }


// below bracket for context end (context name: transactional)
}
