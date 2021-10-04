/* file: compound_representation_item.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY compound_representation_item
    SUPERTYPE OF ( 
        ONEOF ( 
            point_and_vector, 
            point_array ) 
        ANDOR
        ONEOF ( 
            row_representation_item, 
            table_representation_item ) )
    SUBTYPE OF ( representation_item );
      item_element  : compound_item_definition;
  END_ENTITY; -- compound_representation_item (line:10156 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  ENTITY(SELF)	compound_representation_item
    ATTR:  item_element,	TYPE: compound_item_definition -- EXPLICIT
      -- possibly overriden by
          ENTITY: primitive_2d_with_inner_boundary,	TYPE: compound_inner_area_boundary
          ENTITY: row_representation_item,	TYPE: list_representation_item
          ENTITY: point_and_vector,	TYPE: point_and_vector_members
          ENTITY: point_path,	TYPE: point_path_members
          ENTITY: point_array,	TYPE: point_array_members
          ENTITY: location_in_aggregate_representation_item,	TYPE: location_in_aggregate_item


  SUB- ENTITY(3)	primitive_2d_with_inner_boundary
    REDCR: item_element,	TYPE: compound_inner_area_boundary -- EXPLICIT
      -- OVERRIDING ENTITY: compound_representation_item

    ATTR:  inner_boundary,	TYPE: compound_inner_area_boundary -- DERIVED
      := SELF\compound_representation_item.item_element


  SUB- ENTITY(4)	row_value
    (no local attributes)

  SUB- ENTITY(5)	row_representation_item
    REDCR: item_element,	TYPE: list_representation_item -- EXPLICIT
      -- OVERRIDING ENTITY: compound_representation_item


  SUB- ENTITY(6)	value_range
    (no local attributes)

  SUB- ENTITY(7)	table_representation_item
    (no local attributes)

  SUB- ENTITY(8)	structured_text_composition
    (no local attributes)

  SUB- ENTITY(9)	func
    (no local attributes)

  SUB- ENTITY(10)	point_and_vector
    REDCR: item_element,	TYPE: point_and_vector_members -- EXPLICIT
      -- OVERRIDING ENTITY: compound_representation_item


  SUB- ENTITY(11)	point_path
    REDCR: item_element,	TYPE: point_path_members -- EXPLICIT
      -- OVERRIDING ENTITY: compound_representation_item


  SUB- ENTITY(12)	a3ma_length_measure_and_context_dependent_measure_pair
    (no local attributes)

  SUB- ENTITY(13)	ground_fact
    (no local attributes)

  SUB- ENTITY(14)	rule_condition
    (no local attributes)

  SUB- ENTITY(15)	atomic_formula
    (no local attributes)

  SUB- ENTITY(16)	literal_disjunction
    (no local attributes)

  SUB- ENTITY(17)	literal_conjunction
    (no local attributes)

  SUB- ENTITY(18)	simple_clause
    (no local attributes)

  SUB- ENTITY(19)	complex_conjunctive_clause
    (no local attributes)

  SUB- ENTITY(20)	complex_disjunctive_clause
    (no local attributes)

  SUB- ENTITY(21)	complex_clause
    (no local attributes)

  SUB- ENTITY(22)	default_tolerance_table_cell
    (no local attributes)

  SUB- ENTITY(23)	point_array
    REDCR: item_element,	TYPE: point_array_members -- EXPLICIT
      -- OVERRIDING ENTITY: compound_representation_item


  SUB- ENTITY(24)	location_in_aggregate_representation_item
    REDCR: item_element,	TYPE: location_in_aggregate_item -- EXPLICIT
      -- OVERRIDING ENTITY: compound_representation_item


  SUB- ENTITY(25)	shape_data_quality_value_range
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _compound_representation_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOMPOUND_REPRESENTATION_ITEM.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _item_element: sCOMPOUND_ITEM_DEFINITION // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sSHAPE_DIMENSION_REPRESENTATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPOINT_PLACEMENT_SHAPE_REPRESENTATION_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._item_element.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._item_element.value.isValueEqualOptionally(to: rhs._item_element.value, visited: &comppairs)	{
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
      if let comp = self._item_element.value.isValueEqualOptionally(to: rhs._item_element.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ITEM_ELEMENT: sCOMPOUND_ITEM_DEFINITION) {
      self._item_element = ITEM_ELEMENT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sCOMPOUND_ITEM_DEFINITION.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ITEM_ELEMENT: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY compound_representation_item
    SUPERTYPE OF ( 
        ONEOF ( 
            point_and_vector, 
            point_array ) 
        ANDOR
        ONEOF ( 
            row_representation_item, 
            table_representation_item ) )
    SUBTYPE OF ( representation_item );
      item_element  : compound_item_definition;
  END_ENTITY; -- compound_representation_item (line:10156 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOMPOUND_REPRESENTATION_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _compound_representation_item.self
    }
    public let partialEntity: _compound_representation_item

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public var super_eCOMPOUND_REPRESENTATION_ITEM: eCOMPOUND_REPRESENTATION_ITEM { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_ePRIMITIVE_2D_WITH_INNER_BOUNDARY: ePRIMITIVE_2D_WITH_INNER_BOUNDARY? {	// [3]
      return self.complexEntity.entityReference(ePRIMITIVE_2D_WITH_INNER_BOUNDARY.self)
    }

    public var sub_eROW_VALUE: eROW_VALUE? {	// [4]
      return self.complexEntity.entityReference(eROW_VALUE.self)
    }

    public var sub_eROW_REPRESENTATION_ITEM: eROW_REPRESENTATION_ITEM? {	// [5]
      return self.complexEntity.entityReference(eROW_REPRESENTATION_ITEM.self)
    }

    public var sub_eVALUE_RANGE: eVALUE_RANGE? {	// [6]
      return self.complexEntity.entityReference(eVALUE_RANGE.self)
    }

    public var sub_eTABLE_REPRESENTATION_ITEM: eTABLE_REPRESENTATION_ITEM? {	// [7]
      return self.complexEntity.entityReference(eTABLE_REPRESENTATION_ITEM.self)
    }

    public var sub_eSTRUCTURED_TEXT_COMPOSITION: eSTRUCTURED_TEXT_COMPOSITION? {	// [8]
      return self.complexEntity.entityReference(eSTRUCTURED_TEXT_COMPOSITION.self)
    }

    public var sub_eFUNC: eFUNC? {	// [9]
      return self.complexEntity.entityReference(eFUNC.self)
    }

    public var sub_ePOINT_AND_VECTOR: ePOINT_AND_VECTOR? {	// [10]
      return self.complexEntity.entityReference(ePOINT_AND_VECTOR.self)
    }

    public var sub_ePOINT_PATH: ePOINT_PATH? {	// [11]
      return self.complexEntity.entityReference(ePOINT_PATH.self)
    }

    public var sub_eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR: eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR? {	// [12]
      return self.complexEntity.entityReference(eA3MA_LENGTH_MEASURE_AND_CONTEXT_DEPENDENT_MEASURE_PAIR.self)
    }

    public var sub_eGROUND_FACT: eGROUND_FACT? {	// [13]
      return self.complexEntity.entityReference(eGROUND_FACT.self)
    }

    public var sub_eRULE_CONDITION: eRULE_CONDITION? {	// [14]
      return self.complexEntity.entityReference(eRULE_CONDITION.self)
    }

    public var sub_eATOMIC_FORMULA: eATOMIC_FORMULA? {	// [15]
      return self.complexEntity.entityReference(eATOMIC_FORMULA.self)
    }

    public var sub_eLITERAL_DISJUNCTION: eLITERAL_DISJUNCTION? {	// [16]
      return self.complexEntity.entityReference(eLITERAL_DISJUNCTION.self)
    }

    public var sub_eLITERAL_CONJUNCTION: eLITERAL_CONJUNCTION? {	// [17]
      return self.complexEntity.entityReference(eLITERAL_CONJUNCTION.self)
    }

    public var sub_eSIMPLE_CLAUSE: eSIMPLE_CLAUSE? {	// [18]
      return self.complexEntity.entityReference(eSIMPLE_CLAUSE.self)
    }

    public var sub_eCOMPLEX_CONJUNCTIVE_CLAUSE: eCOMPLEX_CONJUNCTIVE_CLAUSE? {	// [19]
      return self.complexEntity.entityReference(eCOMPLEX_CONJUNCTIVE_CLAUSE.self)
    }

    public var sub_eCOMPLEX_DISJUNCTIVE_CLAUSE: eCOMPLEX_DISJUNCTIVE_CLAUSE? {	// [20]
      return self.complexEntity.entityReference(eCOMPLEX_DISJUNCTIVE_CLAUSE.self)
    }

    public var sub_eCOMPLEX_CLAUSE: eCOMPLEX_CLAUSE? {	// [21]
      return self.complexEntity.entityReference(eCOMPLEX_CLAUSE.self)
    }

    public var sub_eDEFAULT_TOLERANCE_TABLE_CELL: eDEFAULT_TOLERANCE_TABLE_CELL? {	// [22]
      return self.complexEntity.entityReference(eDEFAULT_TOLERANCE_TABLE_CELL.self)
    }

    public var sub_ePOINT_ARRAY: ePOINT_ARRAY? {	// [23]
      return self.complexEntity.entityReference(ePOINT_ARRAY.self)
    }

    public var sub_eLOCATION_IN_AGGREGATE_REPRESENTATION_ITEM: eLOCATION_IN_AGGREGATE_REPRESENTATION_ITEM? {	// [24]
      return self.complexEntity.entityReference(eLOCATION_IN_AGGREGATE_REPRESENTATION_ITEM.self)
    }

    public var sub_eSHAPE_DATA_QUALITY_VALUE_RANGE: eSHAPE_DATA_QUALITY_VALUE_RANGE? {	// [25]
      return self.complexEntity.entityReference(eSHAPE_DATA_QUALITY_VALUE_RANGE.self)
    }


    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUB( ``ePRIMITIVE_2D_WITH_INNER_BOUNDARY`` )
    public var INNER_BOUNDARY: sCOMPOUND_INNER_AREA_BOUNDARY?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"INNER_BOUNDARY") {
          return cached.value as! sCOMPOUND_INNER_AREA_BOUNDARY? 
        }
        guard let origin = sub_ePRIMITIVE_2D_WITH_INNER_BOUNDARY else { return nil }
        let value = sCOMPOUND_INNER_AREA_BOUNDARY(origin.partialEntity._inner_boundary__getter(SELF: origin))
        updateCache(derivedAttributeName:"INNER_BOUNDARY", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOMPOUND_REPRESENTATION_ITEM`` )
    public var ITEM_ELEMENT: sCOMPOUND_ITEM_DEFINITION {
      get {
        return SDAI.UNWRAP( self.partialEntity._item_element )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._item_element = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_compound_representation_item.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COMPOUND_REPRESENTATION_ITEM", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCOMPOUND_REPRESENTATION_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INNER_BOUNDARY", keyPath: \eCOMPOUND_REPRESENTATION_ITEM.INNER_BOUNDARY, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEM_ELEMENT", keyPath: \eCOMPOUND_REPRESENTATION_ITEM.ITEM_ELEMENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCOMPOUND_REPRESENTATION_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}