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
define view entity Z_I_ORDER_STATUS_VH_6320 
as select from zso_stat_6320
  association [0..*] to Z_I_ORDER_STATUS_VH_TEXT_6320 as _Text on $projection.OrderStatus = _Text.OrderStatus

{
      @UI.textArrangement: #TEXT_ONLY
      @UI.lineItem: [{importance: #HIGH}]
      @ObjectModel.text.association: '_Text'
  key order_status as OrderStatus,

      _Text
}
