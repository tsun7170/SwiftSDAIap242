/* file: unary_generic_expression.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY unary_generic_expression
    ABSTRACT SUPERTYPE
    SUBTYPE OF ( generic_expression );
      operand  : generic_expression;
  END_ENTITY; -- unary_generic_expression (line:33194 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  ENTITY(SELF)	unary_generic_expression
    ATTR:  operand,	TYPE: generic_expression -- EXPLICIT
      -- possibly overriden by
          ENTITY: linearized_table_function,	TYPE: maths_function
          ENTITY: restriction_function,	TYPE: maths_space
          ENTITY: repackaging_function,	TYPE: maths_function
          ENTITY: not_expression,	TYPE: boolean_expression
          ENTITY: value_function,	TYPE: string_expression
          ENTITY: reindexed_array_function,	TYPE: maths_function
          ENTITY: homogeneous_linear_function,	TYPE: maths_function
          ENTITY: b_spline_function,	TYPE: maths_function
          ENTITY: length_function,	TYPE: string_expression
          ENTITY: partial_derivative_function,	TYPE: maths_function
          ENTITY: odd_function,	TYPE: numeric_expression
          ENTITY: rationalize_function,	TYPE: maths_function
          ENTITY: general_linear_function,	TYPE: maths_function
          ENTITY: unary_numeric_expression,	TYPE: numeric_expression
          ENTITY: definite_integral_function,	TYPE: maths_function


  SUB- ENTITY(3)	standard_table_function
    ATTR:  order,	TYPE: ordering_type -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(4)	regular_table_function
    ATTR:  increments,	TYPE: LIST [1 : ?] OF INTEGER -- EXPLICIT


  SUB- ENTITY(5)	strict_triangular_matrix
    ATTR:  main_diagonal_value,	TYPE: maths_value -- EXPLICIT


  SUB- ENTITY(6)	triangular_matrix
    ATTR:  default_entry,	TYPE: maths_value -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  lo_up,	TYPE: lower_upper -- EXPLICIT

    ATTR:  order,	TYPE: ordering_type -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(7)	symmetric_banded_matrix
    ATTR:  default_entry,	TYPE: maths_value -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  above,	TYPE: nonnegative_integer -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(8)	symmetric_matrix
    ATTR:  symmetry,	TYPE: symmetry_type -- EXPLICIT

    ATTR:  triangle,	TYPE: lower_upper -- EXPLICIT

    ATTR:  order,	TYPE: ordering_type -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(9)	banded_matrix
    ATTR:  default_entry,	TYPE: maths_value -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  below,	TYPE: INTEGER -- EXPLICIT

    ATTR:  above,	TYPE: INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  order,	TYPE: ordering_type -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(10)	linearized_table_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  first,	TYPE: INTEGER -- EXPLICIT

    ATTR:  source,	TYPE: maths_function -- DERIVED
      := SELF\unary_generic_expression.operand


  SUB- ENTITY(11)	restriction_function
    REDCR: operand,	TYPE: maths_space -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression


  SUB- ENTITY(12)	repackaging_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  input_repack,	TYPE: repackage_options -- EXPLICIT

    ATTR:  output_repack,	TYPE: repackage_options -- EXPLICIT

    ATTR:  selected_output,	TYPE: nonnegative_integer -- EXPLICIT


  SUB- ENTITY(13)	int_value_function
    (no local attributes)

  SUB- ENTITY(14)	value_function
    REDCR: operand,	TYPE: string_expression -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression


  SUB- ENTITY(15)	reindexed_array_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  starting_indices,	TYPE: LIST [1 : ?] OF INTEGER -- EXPLICIT


  SUB- ENTITY(16)	homogeneous_linear_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  sum_index,	TYPE: one_or_two -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  mat,	TYPE: maths_function -- DERIVED	(AMBIGUOUS/MASKED)
      := SELF\unary_generic_expression.operand


  SUB- ENTITY(17)	b_spline_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  basis,	TYPE: LIST [1 : ?] OF b_spline_basis -- EXPLICIT

    ATTR:  coef,	TYPE: maths_function -- DERIVED
      := SELF\unary_generic_expression.operand


  SUB- ENTITY(18)	length_function
    REDCR: operand,	TYPE: string_expression -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression


  SUB- ENTITY(19)	not_expression
    REDCR: operand,	TYPE: boolean_expression -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression


  SUB- ENTITY(20)	odd_function
    REDCR: operand,	TYPE: numeric_expression -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression


  SUB- ENTITY(21)	unary_boolean_expression
    (no local attributes)

  SUB- ENTITY(22)	expression_denoted_function
    ATTR:  expr,	TYPE: generic_expression -- DERIVED
      := SELF\unary_generic_expression.operand


  SUB- ENTITY(23)	dependent_variable_definition
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: text -- EXPLICIT


  SUB- ENTITY(24)	partial_derivative_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  d_variables,	TYPE: LIST [1 : ?] OF input_selector -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  extension,	TYPE: extension_options -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  derivand,	TYPE: maths_function -- DERIVED	(AMBIGUOUS/MASKED)
      := SELF\unary_generic_expression.operand


  SUB- ENTITY(25)	partial_derivative_expression
    ATTR:  d_variables,	TYPE: LIST [1 : ?] OF maths_variable -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  extension,	TYPE: extension_options -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  derivand,	TYPE: generic_expression -- DERIVED	(AMBIGUOUS/MASKED)
      := SELF\unary_generic_expression.operand


  SUB- ENTITY(26)	rationalize_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  fun,	TYPE: maths_function -- DERIVED
      := SELF\unary_generic_expression.operand


  SUB- ENTITY(27)	general_linear_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  sum_index,	TYPE: one_or_two -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  mat,	TYPE: maths_function -- DERIVED	(AMBIGUOUS/MASKED)
      := SELF\unary_generic_expression.operand


  SUB- ENTITY(28)	square_root_function
    (no local attributes)

  SUB- ENTITY(29)	log2_function
    (no local attributes)

  SUB- ENTITY(30)	sin_function
    (no local attributes)

  SUB- ENTITY(31)	abs_function
    (no local attributes)

  SUB- ENTITY(32)	minus_function
    (no local attributes)

  SUB- ENTITY(33)	log_function
    (no local attributes)

  SUB- ENTITY(34)	asin_function
    (no local attributes)

  SUB- ENTITY(35)	cos_function
    (no local attributes)

  SUB- ENTITY(36)	tan_function
    (no local attributes)

  SUB- ENTITY(37)	log10_function
    (no local attributes)

  SUB- ENTITY(38)	exp_function
    (no local attributes)

  SUB- ENTITY(39)	acos_function
    (no local attributes)

  SUB- ENTITY(40)	unary_function_call
    (no local attributes)

  SUB- ENTITY(41)	unary_numeric_expression
    REDCR: operand,	TYPE: numeric_expression -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression


  SUB- ENTITY(42)	definite_integral_function
    REDCR: operand,	TYPE: maths_function -- EXPLICIT
      -- OVERRIDING ENTITY: unary_generic_expression

    ATTR:  variable_of_integration,	TYPE: input_selector -- EXPLICIT

    ATTR:  lower_limit_neg_infinity,	TYPE: BOOLEAN -- EXPLICIT

    ATTR:  upper_limit_pos_infinity,	TYPE: BOOLEAN -- EXPLICIT

    ATTR:  integrand,	TYPE: maths_function -- DERIVED
      := SELF\unary_generic_expression.operand


*/


//MARK: - Partial Entity
  public final class _unary_generic_expression : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eUNARY_GENERIC_EXPRESSION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _operand: eGENERIC_EXPRESSION // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._operand.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._operand.value.isValueEqualOptionally(to: rhs._operand.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._operand.value.isValueEqualOptionally(to: rhs._operand.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(OPERAND: eGENERIC_EXPRESSION) {
      self._operand = OPERAND
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eGENERIC_EXPRESSION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( OPERAND: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY unary_generic_expression
    ABSTRACT SUPERTYPE
    SUBTYPE OF ( generic_expression );
      operand  : generic_expression;
  END_ENTITY; -- unary_generic_expression (line:33194 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eUNARY_GENERIC_EXPRESSION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _unary_generic_expression.self
    }
    public let partialEntity: _unary_generic_expression

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public var super_eUNARY_GENERIC_EXPRESSION: eUNARY_GENERIC_EXPRESSION { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eSTANDARD_TABLE_FUNCTION: eSTANDARD_TABLE_FUNCTION? {	// [3]
      return self.complexEntity.entityReference(eSTANDARD_TABLE_FUNCTION.self)
    }

    public var sub_eREGULAR_TABLE_FUNCTION: eREGULAR_TABLE_FUNCTION? {	// [4]
      return self.complexEntity.entityReference(eREGULAR_TABLE_FUNCTION.self)
    }

    public var sub_eSTRICT_TRIANGULAR_MATRIX: eSTRICT_TRIANGULAR_MATRIX? {	// [5]
      return self.complexEntity.entityReference(eSTRICT_TRIANGULAR_MATRIX.self)
    }

    public var sub_eTRIANGULAR_MATRIX: eTRIANGULAR_MATRIX? {	// [6]
      return self.complexEntity.entityReference(eTRIANGULAR_MATRIX.self)
    }

    public var sub_eSYMMETRIC_BANDED_MATRIX: eSYMMETRIC_BANDED_MATRIX? {	// [7]
      return self.complexEntity.entityReference(eSYMMETRIC_BANDED_MATRIX.self)
    }

    public var sub_eSYMMETRIC_MATRIX: eSYMMETRIC_MATRIX? {	// [8]
      return self.complexEntity.entityReference(eSYMMETRIC_MATRIX.self)
    }

    public var sub_eBANDED_MATRIX: eBANDED_MATRIX? {	// [9]
      return self.complexEntity.entityReference(eBANDED_MATRIX.self)
    }

    public var sub_eLINEARIZED_TABLE_FUNCTION: eLINEARIZED_TABLE_FUNCTION? {	// [10]
      return self.complexEntity.entityReference(eLINEARIZED_TABLE_FUNCTION.self)
    }

    public var sub_eRESTRICTION_FUNCTION: eRESTRICTION_FUNCTION? {	// [11]
      return self.complexEntity.entityReference(eRESTRICTION_FUNCTION.self)
    }

    public var sub_eREPACKAGING_FUNCTION: eREPACKAGING_FUNCTION? {	// [12]
      return self.complexEntity.entityReference(eREPACKAGING_FUNCTION.self)
    }

    public var sub_eINT_VALUE_FUNCTION: eINT_VALUE_FUNCTION? {	// [13]
      return self.complexEntity.entityReference(eINT_VALUE_FUNCTION.self)
    }

    public var sub_eVALUE_FUNCTION: eVALUE_FUNCTION? {	// [14]
      return self.complexEntity.entityReference(eVALUE_FUNCTION.self)
    }

    public var sub_eREINDEXED_ARRAY_FUNCTION: eREINDEXED_ARRAY_FUNCTION? {	// [15]
      return self.complexEntity.entityReference(eREINDEXED_ARRAY_FUNCTION.self)
    }

    public var sub_eHOMOGENEOUS_LINEAR_FUNCTION: eHOMOGENEOUS_LINEAR_FUNCTION? {	// [16]
      return self.complexEntity.entityReference(eHOMOGENEOUS_LINEAR_FUNCTION.self)
    }

    public var sub_eB_SPLINE_FUNCTION: eB_SPLINE_FUNCTION? {	// [17]
      return self.complexEntity.entityReference(eB_SPLINE_FUNCTION.self)
    }

    public var sub_eLENGTH_FUNCTION: eLENGTH_FUNCTION? {	// [18]
      return self.complexEntity.entityReference(eLENGTH_FUNCTION.self)
    }

    public var sub_eNOT_EXPRESSION: eNOT_EXPRESSION? {	// [19]
      return self.complexEntity.entityReference(eNOT_EXPRESSION.self)
    }

    public var sub_eODD_FUNCTION: eODD_FUNCTION? {	// [20]
      return self.complexEntity.entityReference(eODD_FUNCTION.self)
    }

    public var sub_eUNARY_BOOLEAN_EXPRESSION: eUNARY_BOOLEAN_EXPRESSION? {	// [21]
      return self.complexEntity.entityReference(eUNARY_BOOLEAN_EXPRESSION.self)
    }

    public var sub_eEXPRESSION_DENOTED_FUNCTION: eEXPRESSION_DENOTED_FUNCTION? {	// [22]
      return self.complexEntity.entityReference(eEXPRESSION_DENOTED_FUNCTION.self)
    }

    public var sub_eDEPENDENT_VARIABLE_DEFINITION: eDEPENDENT_VARIABLE_DEFINITION? {	// [23]
      return self.complexEntity.entityReference(eDEPENDENT_VARIABLE_DEFINITION.self)
    }

    public var sub_ePARTIAL_DERIVATIVE_FUNCTION: ePARTIAL_DERIVATIVE_FUNCTION? {	// [24]
      return self.complexEntity.entityReference(ePARTIAL_DERIVATIVE_FUNCTION.self)
    }

    public var sub_ePARTIAL_DERIVATIVE_EXPRESSION: ePARTIAL_DERIVATIVE_EXPRESSION? {	// [25]
      return self.complexEntity.entityReference(ePARTIAL_DERIVATIVE_EXPRESSION.self)
    }

    public var sub_eRATIONALIZE_FUNCTION: eRATIONALIZE_FUNCTION? {	// [26]
      return self.complexEntity.entityReference(eRATIONALIZE_FUNCTION.self)
    }

    public var sub_eGENERAL_LINEAR_FUNCTION: eGENERAL_LINEAR_FUNCTION? {	// [27]
      return self.complexEntity.entityReference(eGENERAL_LINEAR_FUNCTION.self)
    }

    public var sub_eSQUARE_ROOT_FUNCTION: eSQUARE_ROOT_FUNCTION? {	// [28]
      return self.complexEntity.entityReference(eSQUARE_ROOT_FUNCTION.self)
    }

    public var sub_eLOG2_FUNCTION: eLOG2_FUNCTION? {	// [29]
      return self.complexEntity.entityReference(eLOG2_FUNCTION.self)
    }

    public var sub_eSIN_FUNCTION: eSIN_FUNCTION? {	// [30]
      return self.complexEntity.entityReference(eSIN_FUNCTION.self)
    }

    public var sub_eABS_FUNCTION: eABS_FUNCTION? {	// [31]
      return self.complexEntity.entityReference(eABS_FUNCTION.self)
    }

    public var sub_eMINUS_FUNCTION: eMINUS_FUNCTION? {	// [32]
      return self.complexEntity.entityReference(eMINUS_FUNCTION.self)
    }

    public var sub_eLOG_FUNCTION: eLOG_FUNCTION? {	// [33]
      return self.complexEntity.entityReference(eLOG_FUNCTION.self)
    }

    public var sub_eASIN_FUNCTION: eASIN_FUNCTION? {	// [34]
      return self.complexEntity.entityReference(eASIN_FUNCTION.self)
    }

    public var sub_eCOS_FUNCTION: eCOS_FUNCTION? {	// [35]
      return self.complexEntity.entityReference(eCOS_FUNCTION.self)
    }

    public var sub_eTAN_FUNCTION: eTAN_FUNCTION? {	// [36]
      return self.complexEntity.entityReference(eTAN_FUNCTION.self)
    }

    public var sub_eLOG10_FUNCTION: eLOG10_FUNCTION? {	// [37]
      return self.complexEntity.entityReference(eLOG10_FUNCTION.self)
    }

    public var sub_eEXP_FUNCTION: eEXP_FUNCTION? {	// [38]
      return self.complexEntity.entityReference(eEXP_FUNCTION.self)
    }

    public var sub_eACOS_FUNCTION: eACOS_FUNCTION? {	// [39]
      return self.complexEntity.entityReference(eACOS_FUNCTION.self)
    }

    public var sub_eUNARY_FUNCTION_CALL: eUNARY_FUNCTION_CALL? {	// [40]
      return self.complexEntity.entityReference(eUNARY_FUNCTION_CALL.self)
    }

    public var sub_eUNARY_NUMERIC_EXPRESSION: eUNARY_NUMERIC_EXPRESSION? {	// [41]
      return self.complexEntity.entityReference(eUNARY_NUMERIC_EXPRESSION.self)
    }

    public var sub_eDEFINITE_INTEGRAL_FUNCTION: eDEFINITE_INTEGRAL_FUNCTION? {	// [42]
      return self.complexEntity.entityReference(eDEFINITE_INTEGRAL_FUNCTION.self)
    }


    //MARK: ATTRIBUTES
    // DEFAULT_ENTRY: (3 AMBIGUOUS REFs)

    // EXTENSION: (2 AMBIGUOUS REFs)

    // DERIVAND: (2 AMBIGUOUS REFs)

    // ORDER: (4 AMBIGUOUS REFs)

    // D_VARIABLES: (2 AMBIGUOUS REFs)

    // MAT: (2 AMBIGUOUS REFs)

    // SUM_INDEX: (2 AMBIGUOUS REFs)

    // ABOVE: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eREPACKAGING_FUNCTION`` )
    public var INPUT_REPACK: nREPACKAGE_OPTIONS?  {
      get {
        return sub_eREPACKAGING_FUNCTION?.partialEntity._input_repack
      }
      set(newValue) {
        guard let partial = sub_eREPACKAGING_FUNCTION?.super_eREPACKAGING_FUNCTION.partialEntity
          else { return }
        partial._input_repack = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eB_SPLINE_FUNCTION`` )
    public var COEF: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"COEF") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        guard let origin = sub_eB_SPLINE_FUNCTION else { return nil }
        let value = eMATHS_FUNCTION(origin.partialEntity._coef__getter(SELF: origin))
        updateCache(derivedAttributeName:"COEF", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDEPENDENT_VARIABLE_DEFINITION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return sub_eDEPENDENT_VARIABLE_DEFINITION?.partialEntity._description
      }
      set(newValue) {
        guard let partial = sub_eDEPENDENT_VARIABLE_DEFINITION?.super_eDEPENDENT_VARIABLE_DEFINITION
          .partialEntity else { return }
        partial._description = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eREGULAR_TABLE_FUNCTION`` )
    public var INCREMENTS: (SDAI.LIST<SDAI.INTEGER>/*[1:nil]*/ )?  {
      get {
        return sub_eREGULAR_TABLE_FUNCTION?.partialEntity._increments
      }
      set(newValue) {
        guard let partial = sub_eREGULAR_TABLE_FUNCTION?.super_eREGULAR_TABLE_FUNCTION.partialEntity
          else { return }
        partial._increments = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eEXPRESSION_DENOTED_FUNCTION`` )
    public var EXPR: eGENERIC_EXPRESSION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"EXPR") {
          return cached.value as! eGENERIC_EXPRESSION? 
        }
        guard let origin = sub_eEXPRESSION_DENOTED_FUNCTION else { return nil }
        let value = eGENERIC_EXPRESSION(origin.partialEntity._expr__getter(SELF: origin))
        updateCache(derivedAttributeName:"EXPR", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDEFINITE_INTEGRAL_FUNCTION`` )
    public var VARIABLE_OF_INTEGRATION: tINPUT_SELECTOR?  {
      get {
        return sub_eDEFINITE_INTEGRAL_FUNCTION?.partialEntity._variable_of_integration
      }
      set(newValue) {
        guard let partial = sub_eDEFINITE_INTEGRAL_FUNCTION?.super_eDEFINITE_INTEGRAL_FUNCTION.partialEntity
          else { return }
        partial._variable_of_integration = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eB_SPLINE_FUNCTION`` )
    public var BASIS: (SDAI.LIST<eB_SPLINE_BASIS>/*[1:nil]*/ )?  {
      get {
        return sub_eB_SPLINE_FUNCTION?.partialEntity._basis
      }
      set(newValue) {
        guard let partial = sub_eB_SPLINE_FUNCTION?.super_eB_SPLINE_FUNCTION.partialEntity else { return }
        partial._basis = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eTRIANGULAR_MATRIX`` )
    public var LO_UP: nLOWER_UPPER?  {
      get {
        return sub_eTRIANGULAR_MATRIX?.partialEntity._lo_up
      }
      set(newValue) {
        guard let partial = sub_eTRIANGULAR_MATRIX?.super_eTRIANGULAR_MATRIX.partialEntity else { return }
        partial._lo_up = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSYMMETRIC_MATRIX`` )
    public var SYMMETRY: nSYMMETRY_TYPE?  {
      get {
        return sub_eSYMMETRIC_MATRIX?.partialEntity._symmetry
      }
      set(newValue) {
        guard let partial = sub_eSYMMETRIC_MATRIX?.super_eSYMMETRIC_MATRIX.partialEntity else { return }
        partial._symmetry = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eBANDED_MATRIX`` )
    public var BELOW: SDAI.INTEGER?  {
      get {
        return sub_eBANDED_MATRIX?.partialEntity._below
      }
      set(newValue) {
        guard let partial = sub_eBANDED_MATRIX?.super_eBANDED_MATRIX.partialEntity else { return }
        partial._below = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eRATIONALIZE_FUNCTION`` )
    public var FUN: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"FUN") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        guard let origin = sub_eRATIONALIZE_FUNCTION else { return nil }
        let value = eMATHS_FUNCTION(origin.partialEntity._fun__getter(SELF: origin))
        updateCache(derivedAttributeName:"FUN", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eDEFINITE_INTEGRAL_FUNCTION`` )
    public var INTEGRAND: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INTEGRAND") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        guard let origin = sub_eDEFINITE_INTEGRAL_FUNCTION else { return nil }
        let value = eMATHS_FUNCTION(origin.partialEntity._integrand__getter(SELF: origin))
        updateCache(derivedAttributeName:"INTEGRAND", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDEFINITE_INTEGRAL_FUNCTION`` )
    public var UPPER_LIMIT_POS_INFINITY: SDAI.BOOLEAN?  {
      get {
        return sub_eDEFINITE_INTEGRAL_FUNCTION?.partialEntity._upper_limit_pos_infinity
      }
      set(newValue) {
        guard let partial = sub_eDEFINITE_INTEGRAL_FUNCTION?.super_eDEFINITE_INTEGRAL_FUNCTION.partialEntity
          else { return }
        partial._upper_limit_pos_infinity = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eLINEARIZED_TABLE_FUNCTION`` )
    public var FIRST: SDAI.INTEGER?  {
      get {
        return sub_eLINEARIZED_TABLE_FUNCTION?.partialEntity._first
      }
      set(newValue) {
        guard let partial = sub_eLINEARIZED_TABLE_FUNCTION?.super_eLINEARIZED_TABLE_FUNCTION.partialEntity
          else { return }
        partial._first = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eREINDEXED_ARRAY_FUNCTION`` )
    public var STARTING_INDICES: (SDAI.LIST<SDAI.INTEGER>/*[1:nil]*/ )?  {
      get {
        return sub_eREINDEXED_ARRAY_FUNCTION?.partialEntity._starting_indices
      }
      set(newValue) {
        guard let partial = sub_eREINDEXED_ARRAY_FUNCTION?.super_eREINDEXED_ARRAY_FUNCTION.partialEntity
          else { return }
        partial._starting_indices = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eLINEARIZED_TABLE_FUNCTION`` )
    public var SOURCE: eMATHS_FUNCTION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"SOURCE") {
          return cached.value as! eMATHS_FUNCTION? 
        }
        guard let origin = sub_eLINEARIZED_TABLE_FUNCTION else { return nil }
        let value = eMATHS_FUNCTION(origin.partialEntity._source__getter(SELF: origin))
        updateCache(derivedAttributeName:"SOURCE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSTRICT_TRIANGULAR_MATRIX`` )
    public var MAIN_DIAGONAL_VALUE: sMATHS_VALUE?  {
      get {
        return sub_eSTRICT_TRIANGULAR_MATRIX?.partialEntity._main_diagonal_value
      }
      set(newValue) {
        guard let partial = sub_eSTRICT_TRIANGULAR_MATRIX?.super_eSTRICT_TRIANGULAR_MATRIX.partialEntity
          else { return }
        partial._main_diagonal_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eUNARY_GENERIC_EXPRESSION`` )
    public var OPERAND: eGENERIC_EXPRESSION {
      get {
        return SDAI.UNWRAP( self.partialEntity._operand )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._operand = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eREPACKAGING_FUNCTION`` )
    public var SELECTED_OUTPUT: tNONNEGATIVE_INTEGER?  {
      get {
        return sub_eREPACKAGING_FUNCTION?.partialEntity._selected_output
      }
      set(newValue) {
        guard let partial = sub_eREPACKAGING_FUNCTION?.super_eREPACKAGING_FUNCTION.partialEntity
          else { return }
        partial._selected_output = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDEFINITE_INTEGRAL_FUNCTION`` )
    public var LOWER_LIMIT_NEG_INFINITY: SDAI.BOOLEAN?  {
      get {
        return sub_eDEFINITE_INTEGRAL_FUNCTION?.partialEntity._lower_limit_neg_infinity
      }
      set(newValue) {
        guard let partial = sub_eDEFINITE_INTEGRAL_FUNCTION?.super_eDEFINITE_INTEGRAL_FUNCTION.partialEntity
          else { return }
        partial._lower_limit_neg_infinity = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eSYMMETRIC_MATRIX`` )
    public var TRIANGLE: nLOWER_UPPER?  {
      get {
        return sub_eSYMMETRIC_MATRIX?.partialEntity._triangle
      }
      set(newValue) {
        guard let partial = sub_eSYMMETRIC_MATRIX?.super_eSYMMETRIC_MATRIX.partialEntity else { return }
        partial._triangle = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDEPENDENT_VARIABLE_DEFINITION`` )
    public var NAME: tLABEL?  {
      get {
        return sub_eDEPENDENT_VARIABLE_DEFINITION?.partialEntity._name
      }
      set(newValue) {
        guard let partial = sub_eDEPENDENT_VARIABLE_DEFINITION?.super_eDEPENDENT_VARIABLE_DEFINITION
          .partialEntity else { return }
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eREPACKAGING_FUNCTION`` )
    public var OUTPUT_REPACK: nREPACKAGE_OPTIONS?  {
      get {
        return sub_eREPACKAGING_FUNCTION?.partialEntity._output_repack
      }
      set(newValue) {
        guard let partial = sub_eREPACKAGING_FUNCTION?.super_eREPACKAGING_FUNCTION.partialEntity
          else { return }
        partial._output_repack = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_unary_generic_expression.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "UNARY_GENERIC_EXPRESSION", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eUNARY_GENERIC_EXPRESSION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INPUT_REPACK", keyPath: \eUNARY_GENERIC_EXPRESSION.INPUT_REPACK, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COEF", keyPath: \eUNARY_GENERIC_EXPRESSION.COEF, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eUNARY_GENERIC_EXPRESSION.DESCRIPTION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "INCREMENTS", keyPath: \eUNARY_GENERIC_EXPRESSION.INCREMENTS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "EXPR", keyPath: \eUNARY_GENERIC_EXPRESSION.EXPR, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "VARIABLE_OF_INTEGRATION", keyPath: \eUNARY_GENERIC_EXPRESSION.VARIABLE_OF_INTEGRATION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASIS", keyPath: \eUNARY_GENERIC_EXPRESSION.BASIS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LO_UP", keyPath: \eUNARY_GENERIC_EXPRESSION.LO_UP, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SYMMETRY", keyPath: \eUNARY_GENERIC_EXPRESSION.SYMMETRY, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BELOW", keyPath: \eUNARY_GENERIC_EXPRESSION.BELOW, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FUN", keyPath: \eUNARY_GENERIC_EXPRESSION.FUN, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INTEGRAND", keyPath: \eUNARY_GENERIC_EXPRESSION.INTEGRAND, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "UPPER_LIMIT_POS_INFINITY", keyPath: \eUNARY_GENERIC_EXPRESSION.UPPER_LIMIT_POS_INFINITY, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FIRST", keyPath: \eUNARY_GENERIC_EXPRESSION.FIRST, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "STARTING_INDICES", keyPath: \eUNARY_GENERIC_EXPRESSION.STARTING_INDICES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SOURCE", keyPath: \eUNARY_GENERIC_EXPRESSION.SOURCE, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MAIN_DIAGONAL_VALUE", keyPath: \eUNARY_GENERIC_EXPRESSION.MAIN_DIAGONAL_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OPERAND", keyPath: \eUNARY_GENERIC_EXPRESSION.OPERAND, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SELECTED_OUTPUT", keyPath: \eUNARY_GENERIC_EXPRESSION.SELECTED_OUTPUT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LOWER_LIMIT_NEG_INFINITY", keyPath: \eUNARY_GENERIC_EXPRESSION.LOWER_LIMIT_NEG_INFINITY, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRIANGLE", keyPath: \eUNARY_GENERIC_EXPRESSION.TRIANGLE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eUNARY_GENERIC_EXPRESSION.NAME, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OUTPUT_REPACK", keyPath: \eUNARY_GENERIC_EXPRESSION.OUTPUT_REPACK, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
