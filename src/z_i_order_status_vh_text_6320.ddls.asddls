@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Status Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
 serviceQuality: #A,
 sizeCategory: #S,
 dataClass: #MASTER
}
@ObjectModel.resultSet.sizeCategory: #XS
define view entity Z_I_ORDER_STATUS_VH_TEXT_6320
  as select from zso_stattxt_6320

  association [1..1] to Z_I_ORDER_STATUS_VH_TEXT_6320 as _OrderStatus on $projection.OrderStatus = _OrderStatus.OrderStatus

{
      @ObjectModel.text.element: ['Text']
  key order_status as OrderStatus,

      @Semantics.language: true
  key language     as Language,

      @Semantics.text: true
      text         as Text,

      _OrderStatus
}
