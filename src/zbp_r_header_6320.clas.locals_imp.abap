CLASS lhc_Header DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Header RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Header RESULT result.

    METHODS setCreateOn FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Header~setCreateOn.

ENDCLASS.

CLASS lhc_Header IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD setCreateOn.

* Read from entity HEADER
    READ ENTITIES OF z_r_header_6320 IN LOCAL MODE
    ENTITY Header
    FIELDS ( CreateOn )
    WITH CORRESPONDING #( keys )
    RESULT DATA(headers).

* Delete HEADER with the field CreateOn already set
    DELETE headers WHERE CreateOn IS NOT INITIAL.

    CHECK headers IS NOT INITIAL.


    MODIFY ENTITIES OF z_r_header_6320 IN LOCAL MODE
    ENTITY Header
    UPDATE FIELDS ( CreateOn )
    WITH VALUE #( FOR header IN headers ( %tky          = header-%tky
                                          CreateOn = cl_abap_context_info=>get_system_date( ) ) ).


  ENDMETHOD.

ENDCLASS.
