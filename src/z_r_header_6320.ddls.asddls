@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Saler Order Header - BO Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_R_HEADER_6320
  as select from zso_header_6320
  composition [0..*] of Z_R_ITEM_6320 as _Item
  
  association [1..1] to Z_I_ORDER_STATUS_VH_6320 as _OrderStatus on $projection.OrderStatus = _OrderStatus.OrderStatus
{
  key header_id             as HeaderID,
      email                 as Email,
      firstname             as FirstName,
      lastname              as LastName,
      country               as Country,
      createon              as CreateOn,
      deliverydate          as DeliveryDate,
      orderstatus           as OrderStatus,
      imageurl              as ImageURL,

      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,

      //local ETag field --> OData ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      //total ETag field
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,

       _Item, // Make association public
       _OrderStatus
}
