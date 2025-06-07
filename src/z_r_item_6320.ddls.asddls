@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Saler Order Item - BO Root Entity'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_R_ITEM_6320
  as select from zso_item_6320

  association to parent Z_R_HEADER_6320 as _Header on $projection.HeaderID = _Header.HeaderID
{
  key header_id             as HeaderID,
  key item_id               as ItemID,
      name                  as Name,
      description           as Description,
      releasedate           as ReleaseDate,
      discontinueddate      as DiscontinuedDate,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      price                 as Price,
      currency_code         as CurrencyCode,
      @Semantics.quantity.unitOfMeasure : 'UnitOfMeasure'
      height                as Height,
      @Semantics.quantity.unitOfMeasure : 'UnitOfMeasure'
      width                 as Width,
      @Semantics.quantity.unitOfMeasure : 'UnitOfMeasure'
      depth                 as Depth,
      @Semantics.quantity.unitOfMeasure : 'QuanUnitOfMeasure'
      quantity              as Quantity,
      unitofmeasure         as UnitOfMeasure,
      quan_unitofmeasure    as QuanUnitOfMeasure,
      //Local ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      _Header
}
