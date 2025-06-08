CLASS lhc_Header DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Header RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Header RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Header RESULT result.

    METHODS setCreateOn FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Header~setCreateOn.

ENDCLASS.

CLASS lhc_Header IMPLEMENTATION.

  METHOD get_instance_features.

    READ ENTITY z_r_header_6320
      FROM VALUE #( FOR keyval IN keys ( %key = keyval-%key ) )
      RESULT DATA(lt_header_result).

    result = VALUE #( FOR ls_header IN lt_header_result (
    %key = ls_header-%key
    %field-HeaderID = if_abap_behv=>fc-f-read_only ) ).


  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD setCreateOn.
  ENDMETHOD.

ENDCLASS.
