@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Search Help for Order Status'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
//@ObjectModel.resultSet.sizeCategory: #XS
define view entity Z_I_ORDERSTATUS_VH_6320
  as select from    DDCDS_CUSTOMER_DOMAIN_VALUE(
                      p_domain_name : 'ZDO_ORDERSTATUS_6320') as Values
    left outer join DDCDS_CUSTOMER_DOMAIN_VALUE_T(
                      p_domain_name : 'ZDO_ORDERSTATUS_6320') as Texts on  Texts.domain_name    = Values.domain_name
                                                                       and Texts.value_position = Values.value_position
                                                                       and Texts.language       = $session.system_language
{
      @ObjectModel.text.element: [ 'Description' ]
      @UI.textArrangement: #TEXT_LAST
  key cast( Values.value_low as abap.int1 ) as OrderStatus,
      Texts.text       as Description
}
