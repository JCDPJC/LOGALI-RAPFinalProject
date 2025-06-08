@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Saler Order Header - Interface Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_HEADER_6320
  provider contract transactional_interface
  as projection on Z_R_HEADER_6320
{
  key HeaderID,
      Email,
      FirstName,
      LastName,
      Country,
      CreateOn,
      DeliveryDate,
     
      OrderStatus,
      ImageURL,
      //local ETag field --> OData ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,

      //total ETag field
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      /* Associations */
      _Item : redirected to composition child Z_I_ITEM_6320,
      _OrderStatus
}
