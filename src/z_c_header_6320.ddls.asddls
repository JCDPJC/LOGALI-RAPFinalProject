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
      OrderStatus,
      ImageURL,


      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      /* Associations */
      _Item : redirected to composition child Z_C_ITEM_6320
}
