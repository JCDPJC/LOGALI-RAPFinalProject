@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Saler Order Header - Consumption Entity'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

@Search.searchable: true // fuzzy search
define root view entity Z_C_HEADER_6320
  // Only in the parent entity
  provider contract transactional_query
  as projection on Z_R_HEADER_6320
  
  
{
  key HeaderID,
      @Search.defaultSearchElement: true // fuzzy search
      Email,
      @Search.defaultSearchElement: true // fuzzy search
      FirstName,
      @Search.defaultSearchElement: true // fuzzy search
      LastName,
      Country,
      CreateOn,
      DeliveryDate,

      @Consumption.valueHelpDefinition: [ { entity: { name: 'Z_I_ORDERSTATUS_VH_6320',
                                                      element: 'OrderStatus' } } ]
      @ObjectModel.text.element: [ 'StatusText' ] //With Description

      OrderStatus,
      _OrderStatus.Description as StatusText,
      ImageURL,

      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Item : redirected to composition child Z_C_ITEM_6320,
      _OrderStatus
}
