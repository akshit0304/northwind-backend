PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE cds_model (csn CLOB);
INSERT INTO cds_model VALUES('{"namespace":"bd.bModel","definitions":{"CatalogService":{"kind":"service"},"CatalogService.Products":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"ProductID":{"type":"cds.Integer","@cds.persistence.name":"PRODUCTID"},"ProductName":{"type":"cds.String","length":40,"@cds.persistence.name":"PRODUCTNAME"},"QuantityPerUnit":{"type":"cds.String","length":20,"@cds.persistence.name":"QUANTITYPERUNIT"},"UnitPrice":{"type":"cds.Decimal","precision":15,"scale":2,"@cds.persistence.name":"UNITPRICE"},"UnitsInStock":{"type":"cds.Int16","@cds.persistence.name":"UNITSINSTOCK"},"UnitsOnOrder":{"type":"cds.Int16","@cds.persistence.name":"UNITSONORDER"},"ReorderLevel":{"type":"cds.Int16","@cds.persistence.name":"REORDERLEVEL"},"Discontinued":{"type":"cds.Int16","notNull":true,"default":{"val":false},"@cds.persistence.name":"DISCONTINUED"},"SupplierID":{"type":"cds.Integer","@cds.persistence.name":"SUPPLIERID"},"CategoryID":{"type":"cds.Integer","@cds.persistence.name":"CATEGORYID"},"category":{"type":"cds.Association","target":"CatalogService.Categories","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"category_ID"}],"on":[{"ref":["category","ID"]},"=",{"ref":["category_ID"]}],"@cds.persistence.name":"CATEGORY"},"category_ID":{"type":"cds.String","length":36,"@odata.foreignKey4":"category","@cds.persistence.name":"CATEGORY_ID"},"supplier":{"type":"cds.Association","target":"bd.bModel.master.Suppliers","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"supplier_ID"}],"on":[{"ref":["supplier","ID"]},"=",{"ref":["supplier_ID"]}],"@cds.persistence.name":"SUPPLIER"},"supplier_ID":{"type":"cds.String","length":36,"@odata.foreignKey4":"supplier","@cds.persistence.name":"SUPPLIER_ID"}},"@cds.persistence.name":"CATALOGSERVICE_PRODUCTS","projection":{"from":{"ref":["bd.bModel.master.Products"],"as":"Products_0"},"columns":[{"ref":["Products_0","ID"]},{"ref":["Products_0","createdAt"]},{"ref":["Products_0","createdBy"]},{"ref":["Products_0","modifiedAt"]},{"ref":["Products_0","modifiedBy"]},{"ref":["Products_0","ProductID"]},{"ref":["Products_0","ProductName"]},{"ref":["Products_0","QuantityPerUnit"]},{"ref":["Products_0","UnitPrice"]},{"ref":["Products_0","UnitsInStock"]},{"ref":["Products_0","UnitsOnOrder"]},{"ref":["Products_0","ReorderLevel"]},{"ref":["Products_0","Discontinued"]},{"ref":["Products_0","SupplierID"]},{"ref":["Products_0","CategoryID"]},{"ref":["___category"],"as":"category"},{"ref":["Products_0","category_ID"]},{"ref":["___supplier"],"as":"supplier"},{"ref":["Products_0","supplier_ID"]}],"mixin":{"___category":{"type":"cds.Association","target":"CatalogService.Categories","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"category_ID"}],"on":[{"ref":["___category","ID"]},"=",{"ref":["$projection","category_ID"]}]},"___supplier":{"type":"cds.Association","target":"bd.bModel.master.Suppliers","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"supplier_ID"}],"on":[{"ref":["___supplier","ID"]},"=",{"ref":["$projection","supplier_ID"]}]}}}},"bd.bModel.master.Products":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"ProductID":{"type":"cds.Integer","@cds.persistence.name":"PRODUCTID"},"ProductName":{"type":"cds.String","length":40,"@cds.persistence.name":"PRODUCTNAME"},"QuantityPerUnit":{"type":"cds.String","length":20,"@cds.persistence.name":"QUANTITYPERUNIT"},"UnitPrice":{"type":"cds.Decimal","precision":15,"scale":2,"@cds.persistence.name":"UNITPRICE"},"UnitsInStock":{"type":"cds.Int16","@cds.persistence.name":"UNITSINSTOCK"},"UnitsOnOrder":{"type":"cds.Int16","@cds.persistence.name":"UNITSONORDER"},"ReorderLevel":{"type":"cds.Int16","@cds.persistence.name":"REORDERLEVEL"},"Discontinued":{"type":"cds.Int16","notNull":true,"default":{"val":false},"@cds.persistence.name":"DISCONTINUED"},"SupplierID":{"type":"cds.Integer","@cds.persistence.name":"SUPPLIERID"},"CategoryID":{"type":"cds.Integer","@cds.persistence.name":"CATEGORYID"},"category":{"type":"cds.Association","target":"bd.bModel.master.Categories","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"category_ID"}],"on":[{"ref":["category","ID"]},"=",{"ref":["category_ID"]}],"@cds.persistence.name":"CATEGORY"},"category_ID":{"type":"cds.String","length":36,"@odata.foreignKey4":"category","@cds.persistence.name":"CATEGORY_ID"},"supplier":{"type":"cds.Association","target":"bd.bModel.master.Suppliers","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"supplier_ID"}],"on":[{"ref":["supplier","ID"]},"=",{"ref":["supplier_ID"]}],"@cds.persistence.name":"SUPPLIER"},"supplier_ID":{"type":"cds.String","length":36,"@odata.foreignKey4":"supplier","@cds.persistence.name":"SUPPLIER_ID"}},"@cds.persistence.name":"BD_BMODEL_MASTER_PRODUCTS"},"User":{"kind":"type","type":"cds.Integer"},"bd.bModel.master.Categories":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"CategoryName":{"type":"cds.String","length":100,"notNull":true,"@cds.persistence.name":"CATEGORYNAME"},"CategoryID":{"type":"cds.Int16","default":{"val":1},"@cds.persistence.name":"CATEGORYID"},"Description":{"type":"cds.String","length":200,"@cds.persistence.name":"DESCRIPTION"},"products":{"type":"cds.Association","cardinality":{"max":"*"},"target":"bd.bModel.master.Products","on":[{"ref":["products","category_ID"]},"=",{"ref":["ID"]}],"@cds.persistence.name":"PRODUCTS"}},"@cds.persistence.name":"BD_BMODEL_MASTER_CATEGORIES"},"cuid":{"kind":"aspect","type":"cds.Integer"},"managed":{"kind":"aspect","type":"cds.Integer"},"bd.bModel.master.Suppliers":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"products":{"type":"cds.Association","cardinality":{"max":"*"},"target":"bd.bModel.master.Products","on":[{"ref":["products","supplier_ID"]},"=",{"ref":["ID"]}],"@cds.persistence.name":"PRODUCTS"},"CompanyName":{"type":"cds.String","length":150,"notNull":true,"@cds.persistence.name":"COMPANYNAME"},"ContactName":{"type":"cds.String","length":100,"notNull":true,"@cds.persistence.name":"CONTACTNAME"},"ContactTitle":{"type":"cds.String","length":100,"notNull":true,"@cds.persistence.name":"CONTACTTITLE"},"Address":{"type":"cds.String","length":250,"@cds.persistence.name":"ADDRESS"},"City":{"type":"cds.String","length":50,"@cds.persistence.name":"CITY"},"PostalCode":{"type":"cds.String","length":15,"@cds.persistence.name":"POSTALCODE"},"Country":{"type":"cds.String","length":50,"@cds.persistence.name":"COUNTRY"},"Phone":{"type":"cds.String","length":20,"@cds.persistence.name":"PHONE"},"Fax":{"type":"cds.String","length":30,"@cds.persistence.name":"FAX"},"Website":{"type":"cds.String","length":50,"default":{"val":"www.notexist.com"},"@cds.persistence.name":"WEBSITE"}},"@cds.persistence.name":"BD_BMODEL_MASTER_SUPPLIERS"},"CatalogService.Categories":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"CategoryName":{"type":"cds.String","length":100,"notNull":true,"@cds.persistence.name":"CATEGORYNAME"},"CategoryID":{"type":"cds.Int16","default":{"val":1},"@cds.persistence.name":"CATEGORYID"},"Description":{"type":"cds.String","length":200,"@cds.persistence.name":"DESCRIPTION"},"products":{"type":"cds.Association","cardinality":{"max":"*"},"target":"CatalogService.Products","on":[{"ref":["products","category_ID"]},"=",{"ref":["ID"]}],"@cds.persistence.name":"PRODUCTS"}},"@cds.persistence.name":"CATALOGSERVICE_CATEGORIES","projection":{"from":{"ref":["bd.bModel.master.Categories"],"as":"Categories_0"},"columns":[{"ref":["Categories_0","ID"]},{"ref":["Categories_0","createdAt"]},{"ref":["Categories_0","createdBy"]},{"ref":["Categories_0","modifiedAt"]},{"ref":["Categories_0","modifiedBy"]},{"ref":["Categories_0","CategoryName"]},{"ref":["Categories_0","CategoryID"]},{"ref":["Categories_0","Description"]},{"ref":["___products"],"as":"products"}],"mixin":{"___products":{"type":"cds.Association","cardinality":{"max":"*"},"target":"CatalogService.Products","on":[{"ref":["___products","category_ID"]},"=",{"ref":["$projection","ID"]}]}}}},"CatalogService.Customers":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"CustomerID":{"type":"cds.String","length":15,"@cds.persistence.name":"CUSTOMERID"},"CompanyName":{"type":"cds.String","length":100,"notNull":true,"@cds.persistence.name":"COMPANYNAME"},"ContactName":{"type":"cds.String","length":100,"@cds.persistence.name":"CONTACTNAME"},"ContactTitle":{"type":"cds.String","length":100,"@cds.persistence.name":"CONTACTTITLE"},"Address":{"type":"cds.String","length":250,"@cds.persistence.name":"ADDRESS"},"City":{"type":"cds.String","length":50,"@cds.persistence.name":"CITY"},"Country":{"type":"cds.String","length":50,"@cds.persistence.name":"COUNTRY"},"PostalCode":{"type":"cds.String","length":15,"@cds.persistence.name":"POSTALCODE"},"Phone":{"type":"cds.String","length":20,"@cds.persistence.name":"PHONE"},"Fax":{"type":"cds.String","length":30,"@cds.persistence.name":"FAX"},"orders":{"type":"cds.Association","cardinality":{"max":"*"},"target":"bd.bModel.transactional.Orders","on":[{"ref":["orders","customer_ID"]},"=",{"ref":["ID"]}],"@cds.persistence.name":"ORDERS"}},"@cds.persistence.name":"CATALOGSERVICE_CUSTOMERS","projection":{"from":{"ref":["bd.bModel.master.Customers"],"as":"Customers_0"},"columns":[{"ref":["Customers_0","ID"]},{"ref":["Customers_0","createdAt"]},{"ref":["Customers_0","createdBy"]},{"ref":["Customers_0","modifiedAt"]},{"ref":["Customers_0","modifiedBy"]},{"ref":["Customers_0","CustomerID"]},{"ref":["Customers_0","CompanyName"]},{"ref":["Customers_0","ContactName"]},{"ref":["Customers_0","ContactTitle"]},{"ref":["Customers_0","Address"]},{"ref":["Customers_0","City"]},{"ref":["Customers_0","Country"]},{"ref":["Customers_0","PostalCode"]},{"ref":["Customers_0","Phone"]},{"ref":["Customers_0","Fax"]},{"ref":["___orders"],"as":"orders"}],"mixin":{"___orders":{"type":"cds.Association","cardinality":{"max":"*"},"target":"bd.bModel.transactional.Orders","on":[{"ref":["___orders","customer_ID"]},"=",{"ref":["$projection","ID"]}]}}}},"bd.bModel.master.Customers":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"CustomerID":{"type":"cds.String","length":15,"@cds.persistence.name":"CUSTOMERID"},"CompanyName":{"type":"cds.String","length":100,"notNull":true,"@cds.persistence.name":"COMPANYNAME"},"ContactName":{"type":"cds.String","length":100,"@cds.persistence.name":"CONTACTNAME"},"ContactTitle":{"type":"cds.String","length":100,"@cds.persistence.name":"CONTACTTITLE"},"Address":{"type":"cds.String","length":250,"@cds.persistence.name":"ADDRESS"},"City":{"type":"cds.String","length":50,"@cds.persistence.name":"CITY"},"Country":{"type":"cds.String","length":50,"@cds.persistence.name":"COUNTRY"},"PostalCode":{"type":"cds.String","length":15,"@cds.persistence.name":"POSTALCODE"},"Phone":{"type":"cds.String","length":20,"@cds.persistence.name":"PHONE"},"Fax":{"type":"cds.String","length":30,"@cds.persistence.name":"FAX"},"orders":{"type":"cds.Association","cardinality":{"max":"*"},"target":"bd.bModel.transactional.Orders","on":[{"ref":["orders","customer_ID"]},"=",{"ref":["ID"]}],"@cds.persistence.name":"ORDERS"}},"@cds.persistence.name":"BD_BMODEL_MASTER_CUSTOMERS"},"bd.bModel.transactional.Orders":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"orderIDs":{"type":"cds.Composition","cardinality":{"max":"*"},"target":"bd.bModel.transactional.OrderDetails","on":[{"ref":["orderIDs","order_ID"]},"=",{"ref":["ID"]}],"@cds.persistence.name":"ORDERIDS"},"customer":{"type":"cds.Association","target":"bd.bModel.master.Customers","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"customer_ID"}],"on":[{"ref":["customer","ID"]},"=",{"ref":["customer_ID"]}],"@cds.persistence.name":"CUSTOMER"},"customer_ID":{"type":"cds.String","length":36,"@odata.foreignKey4":"customer","@cds.persistence.name":"CUSTOMER_ID"},"employee":{"type":"cds.Association","target":"bd.bModel.master.Employees","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"employee_ID"}],"on":[{"ref":["employee","ID"]},"=",{"ref":["employee_ID"]}],"@cds.persistence.name":"EMPLOYEE"},"employee_ID":{"type":"cds.String","length":36,"@odata.foreignKey4":"employee","@cds.persistence.name":"EMPLOYEE_ID"},"ShipVia":{"type":"cds.Association","target":"bd.bModel.master.Shippers","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"ShipVia_ID"}],"on":[{"ref":["ShipVia","ID"]},"=",{"ref":["ShipVia_ID"]}],"@cds.persistence.name":"SHIPVIA"},"ShipVia_ID":{"type":"cds.String","length":36,"@odata.foreignKey4":"ShipVia","@cds.persistence.name":"SHIPVIA_ID"},"OrderDate":{"type":"cds.DateTime","notNull":true,"@cds.persistence.name":"ORDERDATE"},"RequiredDate":{"type":"cds.DateTime","@cds.persistence.name":"REQUIREDDATE"},"ShippedDate":{"type":"cds.DateTime","@cds.persistence.name":"SHIPPEDDATE"},"Freight":{"type":"cds.Decimal","precision":15,"scale":2,"@cds.persistence.name":"FREIGHT"},"ShipName":{"type":"cds.String","length":100,"@cds.persistence.name":"SHIPNAME"},"ShipAddress":{"type":"cds.String","length":250,"@cds.persistence.name":"SHIPADDRESS"},"ShipCity":{"type":"cds.String","length":50,"@cds.persistence.name":"SHIPCITY"},"ShipPostalCode":{"type":"cds.String","length":15,"@cds.persistence.name":"SHIPPOSTALCODE"},"ShipCountry":{"type":"cds.String","length":50,"@cds.persistence.name":"SHIPCOUNTRY"},"OrderID":{"type":"cds.Int16","@cds.persistence.name":"ORDERID"},"CustomerID":{"type":"cds.Int16","@cds.persistence.name":"CUSTOMERID"},"QuantityPerUnit":{"type":"cds.String","length":20,"@cds.persistence.name":"QUANTITYPERUNIT"},"UnitPrice":{"type":"cds.Decimal","precision":15,"scale":2,"@cds.persistence.name":"UNITPRICE"},"UnitsInStock":{"type":"cds.Int16","@cds.persistence.name":"UNITSINSTOCK"},"UnitsOnOrder":{"type":"cds.Int16","@cds.persistence.name":"UNITSONORDER"},"ReorderLevel":{"type":"cds.Int16","@cds.persistence.name":"REORDERLEVEL"},"Discontinued":{"type":"cds.UInt8","@cds.persistence.name":"DISCONTINUED"}},"@cds.persistence.name":"BD_BMODEL_TRANSACTIONAL_ORDERS"},"bd.bModel.transactional.OrderDetails":{"kind":"entity","elements":{"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"order":{"type":"cds.Association","target":"bd.bModel.transactional.Orders","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"order_ID"}],"on":[{"ref":["order","ID"]},"=",{"ref":["order_ID"]}],"@cds.persistence.name":"ORDER"},"order_ID":{"type":"cds.String","length":36,"@odata.foreignKey4":"order","@cds.persistence.name":"ORDER_ID"},"product":{"type":"cds.Association","target":"bd.bModel.master.Products","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"product_ID"}],"on":[{"ref":["product","ID"]},"=",{"ref":["product_ID"]}],"@cds.persistence.name":"PRODUCT"},"product_ID":{"type":"cds.String","length":36,"@odata.foreignKey4":"product","@cds.persistence.name":"PRODUCT_ID"},"UnitPrice":{"type":"cds.Decimal","precision":15,"scale":2,"@cds.persistence.name":"UNITPRICE"},"Quantity":{"type":"cds.UInt8","@cds.persistence.name":"QUANTITY"},"Discount":{"type":"cds.Decimal","precision":5,"scale":2,"@cds.persistence.name":"DISCOUNT"},"ProductID":{"type":"cds.UInt8","@cds.persistence.name":"PRODUCTID"},"OrderID":{"type":"cds.UInt8","@cds.persistence.name":"ORDERID"}},"@cds.persistence.name":"BD_BMODEL_TRANSACTIONAL_ORDERDETAILS"},"bd.bModel.master.Employees":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"EmployeeID":{"type":"cds.UInt8","@cds.persistence.name":"EMPLOYEEID"},"reportsTo":{"type":"cds.Association","target":"bd.bModel.master.Employees","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"reportsTo_ID"}],"on":[{"ref":["reportsTo","ID"]},"=",{"ref":["reportsTo_ID"]}],"@cds.persistence.name":"REPORTSTO"},"reportsTo_ID":{"type":"cds.String","length":36,"@odata.foreignKey4":"reportsTo","@cds.persistence.name":"REPORTSTO_ID"},"territory":{"type":"cds.Association","target":"bd.bModel.master.Territories","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"territory_ID"}],"on":[{"ref":["territory","ID"]},"=",{"ref":["territory_ID"]}],"@cds.persistence.name":"TERRITORY"},"territory_ID":{"type":"cds.String","length":36,"@odata.foreignKey4":"territory","@cds.persistence.name":"TERRITORY_ID"},"LastName":{"type":"cds.String","length":50,"@cds.persistence.name":"LASTNAME"},"FirstName":{"type":"cds.String","length":50,"@cds.persistence.name":"FIRSTNAME"},"Title":{"type":"cds.String","length":50,"@cds.persistence.name":"TITLE"},"TitleOfCourtesy":{"type":"cds.String","length":50,"@cds.persistence.name":"TITLEOFCOURTESY"},"BirthDate":{"type":"cds.DateTime","notNull":true,"@cds.persistence.name":"BIRTHDATE"},"HireDate":{"type":"cds.DateTime","notNull":true,"@cds.persistence.name":"HIREDATE"},"Address":{"type":"cds.String","length":200,"@cds.persistence.name":"ADDRESS"},"City":{"type":"cds.String","length":50,"@cds.persistence.name":"CITY"},"PostalCode":{"type":"cds.String","length":20,"@cds.persistence.name":"POSTALCODE"},"Country":{"type":"cds.String","length":50,"@cds.persistence.name":"COUNTRY"},"HomePhone":{"type":"cds.String","length":50,"@cds.persistence.name":"HOMEPHONE"},"Extension":{"type":"cds.String","length":20,"@cds.persistence.name":"EXTENSION"},"Notes":{"type":"cds.String","length":250,"@cds.persistence.name":"NOTES"}},"@cds.persistence.name":"BD_BMODEL_MASTER_EMPLOYEES"},"bd.bModel.master.Territories":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"RegionID":{"type":"cds.UInt8","@cds.persistence.name":"REGIONID"},"region":{"type":"cds.Association","target":"bd.bModel.master.Regions","keys":[{"ref":["ID"],"as":"ID","$generatedFieldName":"region_ID"}],"on":[{"ref":["region","ID"]},"=",{"ref":["region_ID"]}],"@cds.persistence.name":"REGION"},"region_ID":{"type":"cds.String","length":36,"@odata.foreignKey4":"region","@cds.persistence.name":"REGION_ID"},"employees":{"type":"cds.Association","cardinality":{"max":"*"},"target":"bd.bModel.master.Employees","on":[{"ref":["employees","territory_ID"]},"=",{"ref":["ID"]}],"@cds.persistence.name":"EMPLOYEES"},"Description":{"type":"cds.String","length":250,"notNull":true,"@cds.persistence.name":"DESCRIPTION"}},"@cds.persistence.name":"BD_BMODEL_MASTER_TERRITORIES"},"bd.bModel.master.Regions":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"RegionID":{"type":"cds.UInt8","@cds.persistence.name":"REGIONID"},"Description":{"type":"cds.String","length":250,"notNull":true,"@cds.persistence.name":"DESCRIPTION"},"territories":{"type":"cds.Association","cardinality":{"max":"*"},"target":"bd.bModel.master.Territories","on":[{"ref":["territories","region_ID"]},"=",{"ref":["ID"]}],"@cds.persistence.name":"TERRITORIES"}},"@cds.persistence.name":"BD_BMODEL_MASTER_REGIONS"},"bd.bModel.master.Shippers":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"createdAt":{"type":"cds.Timestamp","@cds.persistence.name":"CREATEDAT"},"createdBy":{"type":"cds.String","length":255,"@cds.persistence.name":"CREATEDBY"},"modifiedAt":{"type":"cds.Timestamp","@cds.persistence.name":"MODIFIEDAT"},"modifiedBy":{"type":"cds.String","length":255,"@cds.persistence.name":"MODIFIEDBY"},"ShipperID":{"type":"cds.UInt8","@cds.persistence.name":"SHIPPERID"},"CompanyName":{"type":"cds.String","length":100,"notNull":true,"@cds.persistence.name":"COMPANYNAME"},"Phone":{"type":"cds.String","length":20,"default":{"val":"9099973246"},"@cds.persistence.name":"PHONE"},"orders":{"type":"cds.Association","cardinality":{"max":"*"},"target":"bd.bModel.transactional.Orders","on":[{"ref":["orders","ShipVia_ID"]},"=",{"ref":["ID"]}],"@cds.persistence.name":"ORDERS"}},"@cds.persistence.name":"BD_BMODEL_MASTER_SHIPPERS"},"cds.outbox.Messages":{"kind":"entity","elements":{"ID":{"key":true,"type":"cds.String","length":36,"@cds.persistence.name":"ID"},"timestamp":{"type":"cds.Timestamp","@cds.persistence.name":"TIMESTAMP"},"target":{"type":"cds.String","length":255,"@cds.persistence.name":"TARGET"},"msg":{"type":"cds.LargeString","@cds.persistence.name":"MSG"},"attempts":{"type":"cds.Integer","default":{"val":0},"@cds.persistence.name":"ATTEMPTS"},"partition":{"type":"cds.Integer","default":{"val":0},"@cds.persistence.name":"PARTITION"},"lastError":{"type":"cds.LargeString","@cds.persistence.name":"LASTERROR"},"lastAttemptTimestamp":{"type":"cds.Timestamp","@cds.persistence.name":"LASTATTEMPTTIMESTAMP"},"status":{"type":"cds.String","length":23,"@cds.persistence.name":"STATUS"},"task":{"type":"cds.String","length":255,"@cds.persistence.name":"TASK"},"appid":{"type":"cds.String","length":255,"@cds.persistence.name":"APPID"}},"@cds.persistence.name":"CDS_OUTBOX_MESSAGES"}},"meta":{"creator":"CDS Compiler v6.6.0","flavor":"inferred","minified":true},"$version":"2.0"}');
CREATE TABLE bd_bModel_master_Products (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  ProductID INTEGER,
  ProductName NVARCHAR(40),
  QuantityPerUnit NVARCHAR(20),
  UnitPrice DECIMAL(15, 2),
  UnitsInStock SMALLINT,
  UnitsOnOrder SMALLINT,
  ReorderLevel SMALLINT,
  Discontinued SMALLINT NOT NULL DEFAULT FALSE,
  SupplierID INTEGER,
  CategoryID INTEGER,
  category_ID NVARCHAR(36), supplier_ID NVARCHAR(36),
  PRIMARY KEY(ID)
);
/****** CORRUPTION ERROR *******/
CREATE TABLE bd_bModel_master_Categories (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  CategoryName NVARCHAR(100) NOT NULL,
  CategoryID SMALLINT NOT NULL,
  Description NVARCHAR(200),
  PRIMARY KEY(ID)
);
/****** CORRUPTION ERROR *******/
CREATE TABLE cds_outbox_Messages (
  ID NVARCHAR(36) NOT NULL,
  timestamp TIMESTAMP_TEXT,
  target NVARCHAR(255),
  msg NCLOB,
  attempts INTEGER DEFAULT 0,
  "partition" INTEGER DEFAULT 0,
  lastError NCLOB,
  lastAttemptTimestamp TIMESTAMP_TEXT,
  status NVARCHAR(23),
  task NVARCHAR(255),
  appid NVARCHAR(255),
  PRIMARY KEY(ID)
);
/****** CORRUPTION ERROR *******/
CREATE TABLE bd_bModel_master_Suppliers (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  CompanyName NVARCHAR(150) NOT NULL,
  ContactName NVARCHAR(100) NOT NULL,
  ContactTitle NVARCHAR(100) NOT NULL,
  Address NVARCHAR(250),
  City NVARCHAR(50),
  PostalCode NVARCHAR(15),
  Country NVARCHAR(50),
  Phone NVARCHAR(20),
  Fax NVARCHAR(30),
  Website NVARCHAR(50) DEFAULT 'www.notexist.com',
  PRIMARY KEY(ID)
);
/****** CORRUPTION ERROR *******/
CREATE TABLE bd_bModel_master_Customers (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  CustomerID NVARCHAR(15),
  CompanyName NVARCHAR(100) NOT NULL,
  ContactName NVARCHAR(100),
  ContactTitle NVARCHAR(100),
  Address NVARCHAR(250),
  City NVARCHAR(50),
  Country NVARCHAR(50),
  PostalCode NVARCHAR(15),
  Phone NVARCHAR(20),
  Fax NVARCHAR(30),
  PRIMARY KEY(ID)
);
/****** CORRUPTION ERROR *******/
CREATE TABLE bd_bModel_master_Employees (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  EmployeeID TINYINT,
  reportsTo_ID NVARCHAR(36),
  territory_ID NVARCHAR(36),
  LastName NVARCHAR(50),
  FirstName NVARCHAR(50),
  Title NVARCHAR(50),
  TitleOfCourtesy NVARCHAR(50),
  BirthDate DATETIME_TEXT NOT NULL,
  HireDate DATETIME_TEXT NOT NULL,
  Address NVARCHAR(200),
  City NVARCHAR(50),
  PostalCode NVARCHAR(20),
  Country NVARCHAR(50),
  HomePhone NVARCHAR(50),
  Extension NVARCHAR(20),
  Notes NVARCHAR(250),
  PRIMARY KEY(ID)
);
INSERT INTO bd_bModel_master_Employees VALUES('c1bba1e1-76e2-4a34-bf6d-70644a453b86','2025-10-27T13:29:22.666Z','anonymous','2025-10-27T13:29:22.666Z','anonymous',1,'d4beb5bb-e6d0-4717-bbd0-3460aad9de91',NULL,'Davolio','Nancy','Sales Representative','Ms.','1948-12-08T00:00:00.000Z','1992-05-01T00:00:00.000Z',replace(replace('507 - 20th Ave. E.\r\nApt. 2A','\r',char(13)),'\n',char(10)),'Seattle','98122','USA','(206) 555-9857','5467','Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.');
INSERT INTO bd_bModel_master_Employees VALUES('d4beb5bb-e6d0-4717-bbd0-3460aad9de91','2025-10-27T13:29:22.666Z','anonymous','2025-10-27T13:29:22.666Z','anonymous',2,NULL,NULL,'Fuller','Andrew','Vice President, Sales','Dr.','1952-02-19T00:00:00.000Z','1992-08-14T00:00:00.000Z','908 W. Capital Way','Tacoma','98401','USA','(206) 555-9482','3457','Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.');
INSERT INTO bd_bModel_master_Employees VALUES('2c592581-ef22-4041-9d96-c6cfcd855b4b','2025-10-27T13:29:22.666Z','anonymous','2025-10-27T13:29:22.666Z','anonymous',3,'d4beb5bb-e6d0-4717-bbd0-3460aad9de91',NULL,'Leverling','Janet','Sales Representative','Ms.','1963-08-30T00:00:00.000Z','1992-04-01T00:00:00.000Z','722 Moss Bay Blvd.','Kirkland','98033','USA','(206) 555-3412','3355','Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.');
INSERT INTO bd_bModel_master_Employees VALUES('e1ce3fd3-45c5-4871-b190-c8186f084874','2025-10-27T13:29:22.666Z','anonymous','2025-10-27T13:29:22.666Z','anonymous',4,'d4beb5bb-e6d0-4717-bbd0-3460aad9de91',NULL,'Peacock','Margaret','Sales Representative','Mrs.','1937-09-19T00:00:00.000Z','1993-05-03T00:00:00.000Z','4110 Old Redmond Rd.','Redmond','98052','USA','(206) 555-8122','5176','Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.');
INSERT INTO bd_bModel_master_Employees VALUES('bc46806c-b2e3-4cfd-9833-54fe5b92edaf','2025-10-27T13:29:22.666Z','anonymous','2025-10-27T13:29:22.666Z','anonymous',5,'d4beb5bb-e6d0-4717-bbd0-3460aad9de91',NULL,'Buchanan','Steven','Sales Manager','Mr.','1955-03-04T00:00:00.000Z','1993-10-17T00:00:00.000Z','14 Garrett Hill','London','SW1 8JR','UK','(71) 555-4848','3453','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.');
INSERT INTO bd_bModel_master_Employees VALUES('5c76508f-9dd7-46da-aed3-566c64b1bd3f','2025-10-27T13:29:22.666Z','anonymous','2025-10-27T13:29:22.666Z','anonymous',6,'5c76508f-9dd7-46da-aed3-566c64b1bd3f',NULL,'Suyama','Michael','Sales Representative','Mr.','1963-07-02T00:00:00.000Z','1993-10-17T00:00:00.000Z',replace(replace('Coventry House\r\nMiner Rd.','\r',char(13)),'\n',char(10)),'London','EC2 7JR','UK','(71) 555-7773','428','Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.');
INSERT INTO bd_bModel_master_Employees VALUES('22a4583d-6a94-4b0c-9b95-b655438758e9','2025-10-27T13:29:22.666Z','anonymous','2025-10-27T13:29:22.666Z','anonymous',7,'5c76508f-9dd7-46da-aed3-566c64b1bd3f',NULL,'King','Robert','Sales Representative','Mr.','1960-05-29T00:00:00.000Z','1994-01-02T00:00:00.000Z',replace(replace('Edgeham Hollow\r\nWinchester Way','\r',char(13)),'\n',char(10)),'London','RG1 9SP','UK','(71) 555-5598','465','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office in March 1993.');
INSERT INTO bd_bModel_master_Employees VALUES('525274a2-db97-4f25-a9be-4a616f8f6ece','2025-10-27T13:29:22.666Z','anonymous','2025-10-27T13:29:22.666Z','anonymous',8,'d4beb5bb-e6d0-4717-bbd0-3460aad9de91',NULL,'Callahan','Laura','Inside Sales Coordinator','Ms.','1958-01-09T00:00:00.000Z','1994-03-05T00:00:00.000Z','4726 - 11th Ave. N.E.','Seattle','98105','USA','(206) 555-1189','2344','Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.');
INSERT INTO bd_bModel_master_Employees VALUES('8f73e309-98dc-47ba-9544-3e549fe30f62','2025-10-27T13:29:22.666Z','anonymous','2025-10-27T13:29:22.666Z','anonymous',9,'5c76508f-9dd7-46da-aed3-566c64b1bd3f',NULL,'Dodsworth','Anne','Sales Representative','Ms.','1966-01-27T00:00:00.000Z','1994-11-15T00:00:00.000Z','7 Houndstooth Rd.','London','WG2 7LT','UK','(71) 555-4444','452','Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.');
CREATE TABLE bd_bModel_master_Regions (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  RegionID TINYINT,
  Description NVARCHAR(250) NOT NULL,
  PRIMARY KEY(ID)
);
/****** CORRUPTION ERROR *******/
CREATE TABLE bd_bModel_master_Shippers (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP_TEXT,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP_TEXT,
  modifiedBy NVARCHAR(255),
  ShipperID TINYINT,
  CompanyName NVARCHAR(100) NOT NULL,
  Phone NVARCHAR(20) DEFAULT '9099973246',
  PRIMARY KEY(ID)
);
/****** CORRUPTION ERROR *******/
CREATE VIEW CatalogService_Categories AS SELECT
  Categories_0.ID,
  Categories_0.createdAt,
  Categories_0.createdBy,
  Categories_0.modifiedAt,
  Categories_0.modifiedBy,
  Categories_0.CategoryName,
  Categories_0.CategoryID,
  Categories_0.Description
FROM bd_bModel_master_Categories AS Categories_0;
CREATE VIEW CatalogService_Products AS SELECT
  Products_0.ID,
  Products_0.createdAt,
  Products_0.createdBy,
  Products_0.modifiedAt,
  Products_0.modifiedBy,
  Products_0.ProductID,
  Products_0.ProductName,
  Products_0.QuantityPerUnit,
  Products_0.UnitPrice,
  Products_0.UnitsInStock,
  Products_0.UnitsOnOrder,
  Products_0.ReorderLevel,
  Products_0.Discontinued,
  Products_0.SupplierID,
  Products_0.CategoryID,
  Products_0.category_ID,
  Products_0.supplier_ID
FROM bd_bModel_master_Products AS Products_0;
CREATE VIEW CatalogService_Customers AS SELECT
  Customers_0.ID,
  Customers_0.createdAt,
  Customers_0.createdBy,
  Customers_0.modifiedAt,
  Customers_0.modifiedBy,
  Customers_0.CustomerID,
  Customers_0.CompanyName,
  Customers_0.ContactName,
  Customers_0.ContactTitle,
  Customers_0.Address,
  Customers_0.City,
  Customers_0.Country,
  Customers_0.PostalCode,
  Customers_0.Phone,
  Customers_0.Fax
FROM bd_bModel_master_Customers AS Customers_0;
ROLLBACK; -- due to errors
.archive ...             Manage SQL archives
.auth ON|OFF             Show authorizer callbacks
.backup ?DB? FILE        Backup DB (default "main") to FILE
.bail on|off             Stop after hitting an error.  Default OFF
.binary on|off           Turn binary output on or off.  Default OFF
.cd DIRECTORY            Change the working directory to DIRECTORY
.changes on|off          Show number of rows changed by SQL
.check GLOB              Fail if output since .testcase does not match
.clone NEWDB             Clone data into NEWDB from the existing database
.connection [close] [#]  Open or close an auxiliary database connection
.databases               List names and files of attached databases
.dbconfig ?op? ?val?     List or change sqlite3_db_config() options
.dbinfo ?DB?             Show status information about the database
.dump ?OBJECTS?          Render database content as SQL
.echo on|off             Turn command echo on or off
.eqp on|off|full|...     Enable or disable automatic EXPLAIN QUERY PLAN
.excel                   Display the output of next command in spreadsheet
.exit ?CODE?             Exit this program with return-code CODE
.expert                  EXPERIMENTAL. Suggest indexes for queries
.explain ?on|off|auto?   Change the EXPLAIN formatting mode.  Default: auto
.filectrl CMD ...        Run various sqlite3_file_control() operations
.fullschema ?--indent?   Show schema and the content of sqlite_stat tables
.headers on|off          Turn display of headers on or off
.help ?-all? ?PATTERN?   Show help text for PATTERN
.import FILE TABLE       Import data from FILE into TABLE
.imposter INDEX TABLE    Create imposter table TABLE on index INDEX
.indexes ?TABLE?         Show names of indexes
.limit ?LIMIT? ?VAL?     Display or change the value of an SQLITE_LIMIT
.lint OPTIONS            Report potential schema issues.
.load FILE ?ENTRY?       Load an extension library
.log FILE|off            Turn logging on or off.  FILE can be stderr/stdout
.mode MODE ?OPTIONS?     Set output mode
.nonce STRING            Suspend safe mode for one command if nonce matches
.nullvalue STRING        Use STRING in place of NULL values
.once ?OPTIONS? ?FILE?   Output for the next SQL command only to FILE
.open ?OPTIONS? ?FILE?   Close existing database and reopen FILE
.output ?FILE?           Send output to FILE or stdout if FILE is omitted
.parameter CMD ...       Manage SQL parameter bindings
.print STRING...         Print literal STRING
.progress N              Invoke progress handler after every N opcodes
.prompt MAIN CONTINUE    Replace the standard prompts
.quit                    Exit this program
.read FILE               Read input from FILE or command output
.recover                 Recover as much data as possible from corrupt db.
.restore ?DB? FILE       Restore content of DB (default "main") from FILE
.save ?OPTIONS? FILE     Write database to FILE (an alias for .backup ...)
.scanstats on|off        Turn sqlite3_stmt_scanstatus() metrics on or off
.schema ?PATTERN?        Show the CREATE statements matching PATTERN
.selftest ?OPTIONS?      Run tests defined in the SELFTEST table
.separator COL ?ROW?     Change the column and row separators
.session ?NAME? CMD ...  Create or control sessions
.sha3sum ...             Compute a SHA3 hash of database content
.shell CMD ARGS...       Run CMD ARGS... in a system shell
.show                    Show the current values for various settings
.stats ?ARG?             Show stats or turn stats on or off
.system CMD ARGS...      Run CMD ARGS... in a system shell
.tables ?TABLE?          List names of tables matching LIKE pattern TABLE
.testcase NAME           Begin redirecting output to 'testcase-out.txt'
.testctrl CMD ...        Run various sqlite3_test_control() operations
.timeout MS              Try opening locked tables for MS milliseconds
.timer on|off            Turn SQL timer on or off
.trace ?OPTIONS?         Output each SQL statement as it is run
.vfsinfo ?AUX?           Information about the top-level VFS
.vfslist                 List all available VFSes
.vfsname ?AUX?           Print the name of the VFS stack
.width NUM1 NUM2 ...     Set minimum column widths for columnar output
