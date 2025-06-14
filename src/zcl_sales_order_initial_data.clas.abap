CLASS zcl_sales_order_initial_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sales_order_initial_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    DATA: lt_header TYPE TABLE OF zso_header_6320,
*          lt_item   TYPE TABLE OF zso_item_6320.
*
*    out->write( 'Adding Header Data' ).
*
*    "fill internal table
*    lt_header = VALUE #(
*    (   header_id = '0000000001' email = 'example@example.com'
*      firstname   = 'First Name' lastname = '' createon = '20250101' deliverydate = '20250101' orderstatus = 1
*       imageurl = ' ' )
*     (  header_id = '0000000002' email = 'example2@example2.com'
*      firstname   = 'First Name 2' lastname = '' createon = '20250101' deliverydate = '20250101' orderstatus = 1
*       imageurl = ' ' )
*).
*
*
*    "Delete possible entries; insert new entries
*    DELETE FROM zso_header_6320.
*    INSERT zso_header_6320 FROM TABLE @lt_header.
*
*
*    out->write( 'Adding Item Data' ).
*
*    LOOP AT lt_header ASSIGNING FIELD-SYMBOL(<header>).
*      APPEND VALUE #(
*                      header_id = <header>-header_id
*                      item_id     = '000001'
*                      name        = 'Name'
*                      description = 'Description'
*                      releasedate = '20250202'
*                      discontinueddate = '20991231'
*                      price      = 23
*                      currency_code = 'EUR'
*        ) TO lt_item.
*      APPEND VALUE #( header_id = <header>-header_id
*                      item_id     = '000002'
*                      description = 'Description 2'
*                      releasedate = '20250202'
*                      discontinueddate = '20991231'
*                      price      = 26
*                      currency_code = 'EUR'
*        ) TO lt_item.
*
*    ENDLOOP.
*
*
*    "Delete possible entries; insert new entries
*    DELETE FROM zso_item_6320.
*    INSERT zso_item_6320 FROM TABLE @lt_item.

    DATA: lt_status TYPE TABLE OF zso_stat_6320,
          lt_statxt TYPE TABLE OF zso_stattxt_6320.

    out->write( 'Adding Status Data' ).

    "fill internal table
    lt_status = VALUE #(
    ( order_status = 1 )
    ( order_status = 2 )
    ( order_status = 3 )
).


    "Delete possible entries; insert new entries
    DELETE FROM zso_stat_6320.
    INSERT zso_stat_6320 FROM TABLE @lt_status.

    out->write( 'Adding Status Text Data' ).

    "fill internal table
    lt_statxt = VALUE #(
    ( order_status = 1 language = 'E' text = 'ACCEPTED' )
    ( order_status = 2 language = 'E' text = 'OPEN' )
    ( order_status = 3 language = 'E' text = 'REJECTED' )
    ( order_status = 1 language = 'S' text = 'ACCEPTADO' )
    ( order_status = 2 language = 'S' text = 'ABIERTO' )
    ( order_status = 3 language = 'S' text = 'RECHAZADO' )

).


    "Delete possible entries; insert new entries
    DELETE FROM zso_stattxt_6320.
    INSERT zso_stattxt_6320 FROM TABLE @lt_statxt.

  ENDMETHOD.
ENDCLASS.
