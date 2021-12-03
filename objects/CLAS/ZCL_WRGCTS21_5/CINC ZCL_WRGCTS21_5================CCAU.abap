class lcl_Wrgcts21_5_Tst definition deferred.
class zcl_Wrgcts21_5 definition local friends lcl_Wrgcts21_5_Tst.

class lcl_Wrgcts21_5_Tst definition for testing
  duration short
  risk level harmless
.
*?﻿<asx:abap xmlns:asx="http://www.sap.com/abapxml" version="1.0">
*?<asx:values>
*?<TESTCLASS_OPTIONS>
*?<TEST_CLASS>lcl_Wrgcts21_5_Tst
*?</TEST_CLASS>
*?<TEST_MEMBER>f_Cut
*?</TEST_MEMBER>
*?<OBJECT_UNDER_TEST>ZCL_WRGCTS21_5
*?</OBJECT_UNDER_TEST>
*?<OBJECT_IS_LOCAL/>
*?<GENERATE_FIXTURE/>
*?<GENERATE_CLASS_FIXTURE/>
*?<GENERATE_INVOCATION/>
*?<GENERATE_ASSERT_EQUAL>X
*?</GENERATE_ASSERT_EQUAL>
*?</TESTCLASS_OPTIONS>
*?</asx:values>
*?</asx:abap>
  private section.
    data:
      f_Cut type ref to zcl_Wrgcts21_5.  "class under test

    methods: sum for testing.
endclass.       "lcl_Wrgcts21_5_Tst


class lcl_Wrgcts21_5_Tst implementation.

  method sum.
    Data: lo_object TYPE REF TO zcl_wrgcts21_5,
    lv_result TYPE i.

    CREATE OBJECT lo_object.
    lv_result = lo_object->sum( 3 ).
    cl_Abap_Unit_Assert=>assert_Equals(
      act = lv_result
      exp = 6
      msg = '5 expected, but was not received'
      ).
  endmethod.



endclass.