using bd.bModel as db from '../db/schema';

// @Core.LongDescription: 'tempp temp dfdfdsfdfdsf'
service CatalogService {
    @readonly
    entity Products   as projection on db.master.Products;
  
    entity Categories as projection on db.master.Categories;
    entity Customers  as projection on db.master.Customers;
    entity Orders  as projection on db.transactional.Orders;
    entity OrdersDetails  as projection on db.transactional.OrderDetails;
    
}

// annotate CatalogService.Categories with @title: 'categories title';
// // annotate CatalogService.Categories with @Core.Description: 'categories description';
// annotate CatalogService.Categories with @Core.LongDescription: 'categories long description';

annotate CatalogService with @(
  title : 'Admin Service',
  Core.Description: 'Manage books, authors',
  Core.LongDescription: 'Allows managing books, authors, and more'
);

/**
 * Auth info for swagger
 * @see https://cap.cloud.sap/docs/advanced/publishing-apis/openapi#authorization
 */
annotate CatalogService with @(
  Authorization: {
    Authorizations: [
      { $Type : 'Authorization.Http', Name : 'Basic', Scheme : 'basic' },
      { $Type : 'Authorization.Http', Name : 'JWT',   Scheme : 'bearer', BearerFormat : 'JWT' },
      { $Type : 'Authorization.OAuth2ClientCredentials', Name : 'OAuth2',
        Scopes     : [{
          Scope      : 'some_scope',
          Description: 'Scope description'
        }],
        RefreshUrl : 'https://some.host/oauth/token/refresh',
        TokenUrl   : 'https://some.host/oauth/token'
      },
    ],
    SecuritySchemes: [
      { Authorization : 'Basic' },
      { Authorization : 'JWT', RequiredScopes : [] },
      { Authorization : 'OAuth2' },
    ]
  }
);

annotate CatalogService with @(
    OpenAPI:{
        externalDocs: {
            description: 'API Guide',
            url        : 'https://help.sap.com/docs/product/sample.html'
        },
        Extensions: {
        ![compliance-level]: 'sap:base:v1'
      }
    }
);

