/* file: maths_space.swift 	 generated: Sun Oct 31 15:32:10 2021 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.0, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY maths_space
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            elementary_space, 
            finite_integer_interval, 
            integer_interval_from_min, 
            integer_interval_to_max, 
            finite_real_interval, 
            real_interval_from_min, 
            real_interval_to_max, 
            cartesian_complex_number_region, 
            polar_complex_number_region, 
            finite_space, 
            uniform_product_space, 
            listed_product_space, 
            extended_tuple_space, 
            function_space ) )
    SUBTYPE OF ( generic_expression );
  END_ENTITY; -- maths_space (line:20307 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  ENTITY(SELF)	maths_space
    (no local attributes)

  SUB- ENTITY(3)	cartesian_complex_number_region
    ATTR:  real_constraint,	TYPE: real_interval -- EXPLICIT

    ATTR:  imag_constraint,	TYPE: real_interval -- EXPLICIT


  SUB- ENTITY(4)	finite_integer_interval
    ATTR:  min,	TYPE: INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  max,	TYPE: INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  size,	TYPE: positive_integer -- DERIVED
      := ( max - min ) + 1


  SUB- ENTITY(5)	elementary_space
    ATTR:  space_id,	TYPE: elementary_space_enumerators -- EXPLICIT


  SUB- ENTITY(6)	integer_interval_from_min
    ATTR:  min,	TYPE: INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(7)	integer_interval_to_max
    ATTR:  max,	TYPE: INTEGER -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(8)	finite_real_interval
    ATTR:  min,	TYPE: REAL -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  min_closure,	TYPE: open_closed -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  max,	TYPE: REAL -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  max_closure,	TYPE: open_closed -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(9)	real_interval_from_min
    ATTR:  min,	TYPE: REAL -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  min_closure,	TYPE: open_closed -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(10)	real_interval_to_max
    ATTR:  max,	TYPE: REAL -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  max_closure,	TYPE: open_closed -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(11)	polar_complex_number_region
    ATTR:  centre,	TYPE: complex_number_literal -- EXPLICIT

    ATTR:  distance_constraint,	TYPE: real_interval -- EXPLICIT

    ATTR:  direction_constraint,	TYPE: finite_real_interval -- EXPLICIT


  SUB- ENTITY(12)	generated_finite_numeric_space
    ATTR:  start_value,	TYPE: maths_number -- EXPLICIT

    ATTR:  increment_value,	TYPE: maths_number -- EXPLICIT

    ATTR:  increment_number,	TYPE: positive_integer -- EXPLICIT

    REDCR: members,	TYPE: SET [2 : ?] OF maths_number -- DERIVED (DYNAMIC)
      := make_numeric_set( start_value, increment_value, increment_number )
      -- OVERRIDING ENTITY: finite_space


  SUB- ENTITY(13)	finite_space
    ATTR:  members,	TYPE: SET OF maths_value -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: generated_finite_numeric_space,	TYPE: SET [2 : ?] OF maths_number	(as DERIVED)


  SUB- ENTITY(14)	uniform_product_space
    ATTR:  base,	TYPE: maths_space -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  exponent,	TYPE: positive_integer -- EXPLICIT


  SUB- ENTITY(15)	listed_product_space
    ATTR:  factors,	TYPE: LIST OF maths_space -- EXPLICIT


  SUB- ENTITY(16)	extended_tuple_space
    ATTR:  base,	TYPE: tuple_space -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  extender,	TYPE: maths_space -- EXPLICIT


  SUB- ENTITY(17)	function_space
    ATTR:  domain_constraint,	TYPE: space_constraint_type -- EXPLICIT

    ATTR:  domain_argument,	TYPE: maths_space -- EXPLICIT

    ATTR:  range_constraint,	TYPE: space_constraint_type -- EXPLICIT

    ATTR:  range_argument,	TYPE: maths_space -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _maths_space : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eMATHS_SPACE.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMATHS_SPACE_OR_FUNCTION.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init() {
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 0
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      self.init( )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY maths_space
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            elementary_space, 
            finite_integer_interval, 
            integer_interval_from_min, 
            integer_interval_to_max, 
            finite_real_interval, 
            real_interval_from_min, 
            real_interval_to_max, 
            cartesian_complex_number_region, 
            polar_complex_number_region, 
            finite_space, 
            uniform_product_space, 
            listed_product_space, 
            extended_tuple_space, 
            function_space ) )
    SUBTYPE OF ( generic_expression );
  END_ENTITY; -- maths_space (line:20307 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eMATHS_SPACE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _maths_space.self
    }
    public let partialEntity: _maths_space

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public var super_eMATHS_SPACE: eMATHS_SPACE { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eCARTESIAN_COMPLEX_NUMBER_REGION: eCARTESIAN_COMPLEX_NUMBER_REGION? {	// [3]
      return self.complexEntity.entityReference(eCARTESIAN_COMPLEX_NUMBER_REGION.self)
    }

    public var sub_eFINITE_INTEGER_INTERVAL: eFINITE_INTEGER_INTERVAL? {	// [4]
      return self.complexEntity.entityReference(eFINITE_INTEGER_INTERVAL.self)
    }

    public var sub_eELEMENTARY_SPACE: eELEMENTARY_SPACE? {	// [5]
      return self.complexEntity.entityReference(eELEMENTARY_SPACE.self)
    }

    public var sub_eINTEGER_INTERVAL_FROM_MIN: eINTEGER_INTERVAL_FROM_MIN? {	// [6]
      return self.complexEntity.entityReference(eINTEGER_INTERVAL_FROM_MIN.self)
    }

    public var sub_eINTEGER_INTERVAL_TO_MAX: eINTEGER_INTERVAL_TO_MAX? {	// [7]
      return self.complexEntity.entityReference(eINTEGER_INTERVAL_TO_MAX.self)
    }

    public var sub_eFINITE_REAL_INTERVAL: eFINITE_REAL_INTERVAL? {	// [8]
      return self.complexEntity.entityReference(eFINITE_REAL_INTERVAL.self)
    }

    public var sub_eREAL_INTERVAL_FROM_MIN: eREAL_INTERVAL_FROM_MIN? {	// [9]
      return self.complexEntity.entityReference(eREAL_INTERVAL_FROM_MIN.self)
    }

    public var sub_eREAL_INTERVAL_TO_MAX: eREAL_INTERVAL_TO_MAX? {	// [10]
      return self.complexEntity.entityReference(eREAL_INTERVAL_TO_MAX.self)
    }

    public var sub_ePOLAR_COMPLEX_NUMBER_REGION: ePOLAR_COMPLEX_NUMBER_REGION? {	// [11]
      return self.complexEntity.entityReference(ePOLAR_COMPLEX_NUMBER_REGION.self)
    }

    public var sub_eGENERATED_FINITE_NUMERIC_SPACE: eGENERATED_FINITE_NUMERIC_SPACE? {	// [12]
      return self.complexEntity.entityReference(eGENERATED_FINITE_NUMERIC_SPACE.self)
    }

    public var sub_eFINITE_SPACE: eFINITE_SPACE? {	// [13]
      return self.complexEntity.entityReference(eFINITE_SPACE.self)
    }

    public var sub_eUNIFORM_PRODUCT_SPACE: eUNIFORM_PRODUCT_SPACE? {	// [14]
      return self.complexEntity.entityReference(eUNIFORM_PRODUCT_SPACE.self)
    }

    public var sub_eLISTED_PRODUCT_SPACE: eLISTED_PRODUCT_SPACE? {	// [15]
      return self.complexEntity.entityReference(eLISTED_PRODUCT_SPACE.self)
    }

    public var sub_eEXTENDED_TUPLE_SPACE: eEXTENDED_TUPLE_SPACE? {	// [16]
      return self.complexEntity.entityReference(eEXTENDED_TUPLE_SPACE.self)
    }

    public var sub_eFUNCTION_SPACE: eFUNCTION_SPACE? {	// [17]
      return self.complexEntity.entityReference(eFUNCTION_SPACE.self)
    }


    //MARK: ATTRIBUTES
    // MIN: (4 AMBIGUOUS REFs)

    // MIN_CLOSURE: (2 AMBIGUOUS REFs)

    // MAX: (4 AMBIGUOUS REFs)

    // BASE: (2 AMBIGUOUS REFs)

    // MAX_CLOSURE: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eFUNCTION_SPACE`` )
    public var RANGE_ARGUMENT: eMATHS_SPACE?  {
      get {
        return sub_eFUNCTION_SPACE?.partialEntity._range_argument
      }
      set(newValue) {
        guard let partial = sub_eFUNCTION_SPACE?.super_eFUNCTION_SPACE.partialEntity else { return }
        partial._range_argument = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXTENDED_TUPLE_SPACE`` )
    public var EXTENDER: eMATHS_SPACE?  {
      get {
        return sub_eEXTENDED_TUPLE_SPACE?.partialEntity._extender
      }
      set(newValue) {
        guard let partial = sub_eEXTENDED_TUPLE_SPACE?.super_eEXTENDED_TUPLE_SPACE.partialEntity
          else { return }
        partial._extender = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOLAR_COMPLEX_NUMBER_REGION`` )
    public var DIRECTION_CONSTRAINT: eFINITE_REAL_INTERVAL?  {
      get {
        return sub_ePOLAR_COMPLEX_NUMBER_REGION?.partialEntity._direction_constraint
      }
      set(newValue) {
        guard let partial = sub_ePOLAR_COMPLEX_NUMBER_REGION?.super_ePOLAR_COMPLEX_NUMBER_REGION
          .partialEntity else { return }
        partial._direction_constraint = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eUNIFORM_PRODUCT_SPACE`` )
    public var EXPONENT: tPOSITIVE_INTEGER?  {
      get {
        return sub_eUNIFORM_PRODUCT_SPACE?.partialEntity._exponent
      }
      set(newValue) {
        guard let partial = sub_eUNIFORM_PRODUCT_SPACE?.super_eUNIFORM_PRODUCT_SPACE.partialEntity
          else { return }
        partial._exponent = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eFUNCTION_SPACE`` )
    public var DOMAIN_CONSTRAINT: nSPACE_CONSTRAINT_TYPE?  {
      get {
        return sub_eFUNCTION_SPACE?.partialEntity._domain_constraint
      }
      set(newValue) {
        guard let partial = sub_eFUNCTION_SPACE?.super_eFUNCTION_SPACE.partialEntity else { return }
        partial._domain_constraint = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eLISTED_PRODUCT_SPACE`` )
    public var FACTORS: SDAI.LIST<eMATHS_SPACE>?  {
      get {
        return sub_eLISTED_PRODUCT_SPACE?.partialEntity._factors
      }
      set(newValue) {
        guard let partial = sub_eLISTED_PRODUCT_SPACE?.super_eLISTED_PRODUCT_SPACE.partialEntity
          else { return }
        partial._factors = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOLAR_COMPLEX_NUMBER_REGION`` )
    public var CENTRE: eCOMPLEX_NUMBER_LITERAL?  {
      get {
        return sub_ePOLAR_COMPLEX_NUMBER_REGION?.partialEntity._centre
      }
      set(newValue) {
        guard let partial = sub_ePOLAR_COMPLEX_NUMBER_REGION?.super_ePOLAR_COMPLEX_NUMBER_REGION
          .partialEntity else { return }
        partial._centre = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eFUNCTION_SPACE`` )
    public var RANGE_CONSTRAINT: nSPACE_CONSTRAINT_TYPE?  {
      get {
        return sub_eFUNCTION_SPACE?.partialEntity._range_constraint
      }
      set(newValue) {
        guard let partial = sub_eFUNCTION_SPACE?.super_eFUNCTION_SPACE.partialEntity else { return }
        partial._range_constraint = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCARTESIAN_COMPLEX_NUMBER_REGION`` )
    public var IMAG_CONSTRAINT: sREAL_INTERVAL?  {
      get {
        return sub_eCARTESIAN_COMPLEX_NUMBER_REGION?.partialEntity._imag_constraint
      }
      set(newValue) {
        guard let partial = sub_eCARTESIAN_COMPLEX_NUMBER_REGION?.super_eCARTESIAN_COMPLEX_NUMBER_REGION
          .partialEntity else { return }
        partial._imag_constraint = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGENERATED_FINITE_NUMERIC_SPACE`` )
    public var START_VALUE: tMATHS_NUMBER?  {
      get {
        return sub_eGENERATED_FINITE_NUMERIC_SPACE?.partialEntity._start_value
      }
      set(newValue) {
        guard let partial = sub_eGENERATED_FINITE_NUMERIC_SPACE?.super_eGENERATED_FINITE_NUMERIC_SPACE
          .partialEntity else { return }
        partial._start_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOLAR_COMPLEX_NUMBER_REGION`` )
    public var DISTANCE_CONSTRAINT: sREAL_INTERVAL?  {
      get {
        return sub_ePOLAR_COMPLEX_NUMBER_REGION?.partialEntity._distance_constraint
      }
      set(newValue) {
        guard let partial = sub_ePOLAR_COMPLEX_NUMBER_REGION?.super_ePOLAR_COMPLEX_NUMBER_REGION
          .partialEntity else { return }
        partial._distance_constraint = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eFINITE_INTEGER_INTERVAL`` )
    public var SIZE: tPOSITIVE_INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"SIZE") {
          return cached.value as! tPOSITIVE_INTEGER? 
        }
        guard let origin = sub_eFINITE_INTEGER_INTERVAL else { return nil }
        let value = tPOSITIVE_INTEGER(origin.partialEntity._size__getter(SELF: origin))
        updateCache(derivedAttributeName:"SIZE", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eFUNCTION_SPACE`` )
    public var DOMAIN_ARGUMENT: eMATHS_SPACE?  {
      get {
        return sub_eFUNCTION_SPACE?.partialEntity._domain_argument
      }
      set(newValue) {
        guard let partial = sub_eFUNCTION_SPACE?.super_eFUNCTION_SPACE.partialEntity else { return }
        partial._domain_argument = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCARTESIAN_COMPLEX_NUMBER_REGION`` )
    public var REAL_CONSTRAINT: sREAL_INTERVAL?  {
      get {
        return sub_eCARTESIAN_COMPLEX_NUMBER_REGION?.partialEntity._real_constraint
      }
      set(newValue) {
        guard let partial = sub_eCARTESIAN_COMPLEX_NUMBER_REGION?.super_eCARTESIAN_COMPLEX_NUMBER_REGION
          .partialEntity else { return }
        partial._real_constraint = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eELEMENTARY_SPACE`` )
    public var SPACE_ID: nELEMENTARY_SPACE_ENUMERATORS?  {
      get {
        return sub_eELEMENTARY_SPACE?.partialEntity._space_id
      }
      set(newValue) {
        guard let partial = sub_eELEMENTARY_SPACE?.super_eELEMENTARY_SPACE.partialEntity else { return }
        partial._space_id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUB( ``eFINITE_SPACE`` )
    public var MEMBERS: SDAI.SET<sMATHS_VALUE>?  {
      get {
        if let resolved = _finite_space._members__provider(complex: self.complexEntity) {
          let value = resolved._members__getter(complex: self.complexEntity)
          return value
        }
        else {
          return sub_eFINITE_SPACE?.partialEntity._members
        }
      }
      set(newValue) {
        if let _ = _finite_space._members__provider(complex: self.complexEntity) { return }

        guard let partial = sub_eFINITE_SPACE?.super_eFINITE_SPACE.partialEntity else { return }
        partial._members = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGENERATED_FINITE_NUMERIC_SPACE`` )
    public var INCREMENT_NUMBER: tPOSITIVE_INTEGER?  {
      get {
        return sub_eGENERATED_FINITE_NUMERIC_SPACE?.partialEntity._increment_number
      }
      set(newValue) {
        guard let partial = sub_eGENERATED_FINITE_NUMERIC_SPACE?.super_eGENERATED_FINITE_NUMERIC_SPACE
          .partialEntity else { return }
        partial._increment_number = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGENERATED_FINITE_NUMERIC_SPACE`` )
    public var INCREMENT_VALUE: tMATHS_NUMBER?  {
      get {
        return sub_eGENERATED_FINITE_NUMERIC_SPACE?.partialEntity._increment_value
      }
      set(newValue) {
        guard let partial = sub_eGENERATED_FINITE_NUMERIC_SPACE?.super_eGENERATED_FINITE_NUMERIC_SPACE
          .partialEntity else { return }
        partial._increment_value = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_maths_space.self) else { return nil }
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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "MATHS_SPACE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_SPACE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "RANGE_ARGUMENT", keyPath: \eMATHS_SPACE.RANGE_ARGUMENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EXTENDER", keyPath: \eMATHS_SPACE.EXTENDER, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIRECTION_CONSTRAINT", keyPath: \eMATHS_SPACE.DIRECTION_CONSTRAINT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EXPONENT", keyPath: \eMATHS_SPACE.EXPONENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DOMAIN_CONSTRAINT", keyPath: \eMATHS_SPACE.DOMAIN_CONSTRAINT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "FACTORS", keyPath: \eMATHS_SPACE.FACTORS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CENTRE", keyPath: \eMATHS_SPACE.CENTRE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANGE_CONSTRAINT", keyPath: \eMATHS_SPACE.RANGE_CONSTRAINT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "IMAG_CONSTRAINT", keyPath: \eMATHS_SPACE.IMAG_CONSTRAINT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "START_VALUE", keyPath: \eMATHS_SPACE.START_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DISTANCE_CONSTRAINT", keyPath: \eMATHS_SPACE.DISTANCE_CONSTRAINT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SIZE", keyPath: \eMATHS_SPACE.SIZE, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DOMAIN_ARGUMENT", keyPath: \eMATHS_SPACE.DOMAIN_ARGUMENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REAL_CONSTRAINT", keyPath: \eMATHS_SPACE.REAL_CONSTRAINT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SPACE_ID", keyPath: \eMATHS_SPACE.SPACE_ID, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MEMBERS", keyPath: \eMATHS_SPACE.MEMBERS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INCREMENT_NUMBER", keyPath: \eMATHS_SPACE.INCREMENT_NUMBER, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "INCREMENT_VALUE", keyPath: \eMATHS_SPACE.INCREMENT_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
