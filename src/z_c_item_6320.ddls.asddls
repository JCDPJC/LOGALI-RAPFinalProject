@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Saler Order Item - Consumption Entity'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity Z_C_ITEM_6320
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

      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_CurrencyStdVH',  // SearchHelp
                                                     element: 'Currency' },
                                                     useForValidation: true }] //Validate UI entry, not WebAPI
      CurrencyCode,
      @Semantics.quantity.unitOfMeasure : 'UnitOfMeasure'
      Height,
      @Semantics.quantity.unitOfMeasure : 'UnitOfMeasure'
      Width,
      @Semantics.quantity.unitOfMeasure : 'UnitOfMeasure'
      Depth,
      @Semantics.quantity.unitOfMeasure : 'QuanUnitOfMeasure'
      Quantity,
      
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_UnitOfMeasureStdVH',  // SearchHelp
                                                     element: 'UnitOfMeasure' },
                                                     useForValidation: true }] //Validate UI entry, not WebAPI      
      UnitOfMeasure,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_UnitOfMeasureStdVH',  // SearchHelp
                                                     element: 'UnitOfMeasure' },
                                                     useForValidation: true }] //Validate UI entry, not WebAPI         
      QuanUnitOfMeasure,
      LocalLastChangedAt,
      /* Associations */
      _Header : redirected to parent Z_C_HEADER_6320
}
