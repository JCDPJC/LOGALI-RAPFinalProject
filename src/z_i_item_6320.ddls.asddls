@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Saler Order Item - Interface Entity'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z_I_ITEM_6320
  as projection on Z_R_ITEM_6320
{
  key HeaderID,
  key ItemID,
      Name,
      Description,
      ReleaseDate,
      DiscontinuedDate,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      Price,
      CurrencyCode,
      @Semantics.quantity.unitOfMeasure : 'UnitOfMeasure'
      Height,
      @Semantics.quantity.unitOfMeasure : 'UnitOfMeasure'
      Width,
      @Semantics.quantity.unitOfMeasure : 'UnitOfMeasure'
      Depth,
      @Semantics.quantity.unitOfMeasure : 'QuanUnitOfMeasure'
      Quantity,
      UnitOfMeasure,
      QuanUnitOfMeasure,
      LocalLastChangedAt,
      /* Associations */
      _Header : redirected to parent Z_I_HEADER_6320
}
