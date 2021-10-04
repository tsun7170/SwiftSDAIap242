/* file: shape_data_quality_value_range.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY shape_data_quality_value_range
    SUBTYPE OF ( compound_representation_item );
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SET_REPRESENTATION_ITEM' IN TYPEOF( SELF\
               compound_representation_item.item_element ) ) AND ( SIZEOF( SELF\compound_representation_item.
               item_element ) = 2 ) AND ( ( SIZEOF( QUERY ( i1 <* SELF\compound_representation_item.
               item_element | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MEASURE_REPRESENTATION_ITEM' 
               IN TYPEOF( i1 ) ) ) ) = 2 ) OR ( SIZEOF( QUERY ( i2 <* SELF\compound_representation_item.
               item_element | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VALUE_REPRESENTATION_ITEM' 
               IN TYPEOF( i2 ) ) ) ) = 2 ) ) );
      wr2: ( ( SIZEOF( QUERY ( i <* SELF\compound_representation_item.item_element | ( i.name = 'upper limit' ) ) ) 
               = 1 ) AND ( SIZEOF( QUERY ( i <* SELF\compound_representation_item.item_element | ( i.name = 
               'lower limit'  ) ) ) = 1 ) );
      wr3: ( ( SIZEOF( QUERY ( i1 <* SELF\compound_representation_item.item_element | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MEASURE_REPRESENTATION_ITEM'  IN TYPEOF( i1 ) ) 
               AND ( SIZEOF( QUERY ( i2 <* SELF\compound_representation_item.item_element | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MEASURE_REPRESENTATION_ITEM'  IN TYPEOF( i2 ) ) 
               AND ( i1 :<>: i2 ) AND ( i1\measure_with_unit.unit_component :=: i2\measure_with_unit.
               unit_component ) ) ) ) = 1 ) ) ) ) = 2 ) OR ( SIZEOF( QUERY ( i1 <* SELF\
               compound_representation_item.item_element | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VALUE_REPRESENTATION_ITEM'  IN TYPEOF( i1 ) ) 
               AND ( SIZEOF( QUERY ( i2 <* SELF\compound_representation_item.item_element | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VALUE_REPRESENTATION_ITEM'  IN TYPEOF( i2 ) ) 
               AND ( i1 :<>: i2 ) AND ( TYPEOF( i1\value_representation_item.value_component ) = TYPEOF( i2\
               value_representation_item.value_component ) ) ) ) ) = 1 ) ) ) ) = 2 ) );
  END_ENTITY; -- shape_data_quality_value_range (line:28819 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	compound_representation_item
    ATTR:  item_element,	TYPE: compound_item_definition -- EXPLICIT
      -- possibly overriden by
          ENTITY: primitive_2d_with_inner_boundary,	TYPE: compound_inner_area_boundary
          ENTITY: row_representation_item,	TYPE: list_representation_item
          ENTITY: point_and_vector,	TYPE: point_and_vector_members
          ENTITY: point_path,	TYPE: point_path_members
          ENTITY: point_array,	TYPE: point_array_members
          ENTITY: location_in_aggregate_representation_item,	TYPE: location_in_aggregate_item


  ENTITY(SELF)	shape_data_quality_value_range
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _shape_data_quality_value_range : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSHAPE_DATA_QUALITY_VALUE_RANGE.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sSHAPE_DATA_QUALITY_VALUE_LIMIT_TYPE_SELECT.typeName)) // -> Self
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


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSHAPE_DATA_QUALITY_VALUE_RANGE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.GROUP_REF(eCOMPOUND_REPRESENTATION_ITEM.self)?.ITEM_ELEMENT, 
        IS: tSET_REPRESENTATION_ITEM.self)
      let _TEMP2 = SELF.GROUP_REF(eCOMPOUND_REPRESENTATION_ITEM.self)
      let _TEMP3 = _TEMP2?.ITEM_ELEMENT
      let _TEMP4 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*sCOMPOUND_ITEM_DEFINITION*/_TEMP3))
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
      let _TEMP6 = SELF.GROUP_REF(eCOMPOUND_REPRESENTATION_ITEM.self)
      let _TEMP7 = _TEMP6?.ITEM_ELEMENT
      let _TEMP8 = _TEMP7?.QUERY{ I1 in 

          let _TEMP1 = SDAI.TYPEOF(I1, IS: eMEASURE_REPRESENTATION_ITEM.self)
          return _TEMP1 }
      let _TEMP9 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*sCOMPOUND_ITEM_DEFINITION*/_TEMP8))
      let _TEMP10 = _TEMP9 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
      let _TEMP11 = SELF.GROUP_REF(eCOMPOUND_REPRESENTATION_ITEM.self)
      let _TEMP12 = _TEMP11?.ITEM_ELEMENT
      let _TEMP13 = _TEMP12?.QUERY{ I2 in 

          let _TEMP1 = SDAI.TYPEOF(I2, IS: eVALUE_REPRESENTATION_ITEM.self)
          return _TEMP1 }
      let _TEMP14 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*sCOMPOUND_ITEM_DEFINITION*/_TEMP13))
      let _TEMP15 = _TEMP14 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
      let _TEMP16 = _TEMP10 || _TEMP15
      let _TEMP17 = _TEMP5 && _TEMP16
      let _TEMP18 = _TEMP1 && _TEMP17
      return _TEMP18
    }
    public static func WHERE_wr2(SELF: eSHAPE_DATA_QUALITY_VALUE_RANGE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eCOMPOUND_REPRESENTATION_ITEM.self)
      let _TEMP2 = _TEMP1?.ITEM_ELEMENT
      let _TEMP3 = _TEMP2?.QUERY{ I in 

          let _TEMP1 = I.NAME
          let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("upper limit"))
          return _TEMP2 }
      let _TEMP4 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*sCOMPOUND_ITEM_DEFINITION*/_TEMP3))
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP6 = SELF.GROUP_REF(eCOMPOUND_REPRESENTATION_ITEM.self)
      let _TEMP7 = _TEMP6?.ITEM_ELEMENT
      let _TEMP8 = _TEMP7?.QUERY{ I in 

          let _TEMP1 = I.NAME
          let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING("lower limit"))
          return _TEMP2 }
      let _TEMP9 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*sCOMPOUND_ITEM_DEFINITION*/_TEMP8))
      let _TEMP10 = _TEMP9 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP11 = _TEMP5 && _TEMP10
      return _TEMP11
    }
    public static func WHERE_wr3(SELF: eSHAPE_DATA_QUALITY_VALUE_RANGE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eCOMPOUND_REPRESENTATION_ITEM.self)
      let _TEMP2 = _TEMP1?.ITEM_ELEMENT
      let _TEMP3 = _TEMP2?.QUERY{ I1 in 

          let _TEMP1 = SDAI.TYPEOF(I1, IS: eMEASURE_REPRESENTATION_ITEM.self)
          let _TEMP2 = SELF.GROUP_REF(eCOMPOUND_REPRESENTATION_ITEM.self)
          let _TEMP3 = _TEMP2?.ITEM_ELEMENT
          let _TEMP4 = _TEMP3?.QUERY{ I2 in 

              let _TEMP1 = SDAI.TYPEOF(I2, IS: eMEASURE_REPRESENTATION_ITEM.self)
              let _TEMP2 = SDAI.FORCE_OPTIONAL(I1) .!==. SDAI.FORCE_OPTIONAL(I2)
              let _TEMP3 = _TEMP1 && _TEMP2
              let _TEMP4 = I1.GROUP_REF(eMEASURE_WITH_UNIT.self)
              let _TEMP5 = _TEMP4?.UNIT_COMPONENT
              let _TEMP6 = I2.GROUP_REF(eMEASURE_WITH_UNIT.self)
              let _TEMP7 = _TEMP6?.UNIT_COMPONENT
              let _TEMP8 = _TEMP5 .===. _TEMP7
              let _TEMP9 = _TEMP3 && _TEMP8
              return _TEMP9 }
          let _TEMP5 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*sCOMPOUND_ITEM_DEFINITION*/_TEMP4))
          let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP7 = _TEMP1 && _TEMP6
          return _TEMP7 }
      let _TEMP4 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*sCOMPOUND_ITEM_DEFINITION*/_TEMP3))
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
      let _TEMP6 = SELF.GROUP_REF(eCOMPOUND_REPRESENTATION_ITEM.self)
      let _TEMP7 = _TEMP6?.ITEM_ELEMENT
      let _TEMP8 = _TEMP7?.QUERY{ I1 in 

          let _TEMP1 = SDAI.TYPEOF(I1, IS: eVALUE_REPRESENTATION_ITEM.self)
          let _TEMP2 = SELF.GROUP_REF(eCOMPOUND_REPRESENTATION_ITEM.self)
          let _TEMP3 = _TEMP2?.ITEM_ELEMENT
          let _TEMP4 = _TEMP3?.QUERY{ I2 in 

              let _TEMP1 = SDAI.TYPEOF(I2, IS: eVALUE_REPRESENTATION_ITEM.self)
              let _TEMP2 = SDAI.FORCE_OPTIONAL(I1) .!==. SDAI.FORCE_OPTIONAL(I2)
              let _TEMP3 = _TEMP1 && _TEMP2
              let _TEMP4 = I1.GROUP_REF(eVALUE_REPRESENTATION_ITEM.self)
              let _TEMP5 = _TEMP4?.VALUE_COMPONENT
              let _TEMP6 = SDAI.TYPEOF(_TEMP5)
              let _TEMP7 = I2.GROUP_REF(eVALUE_REPRESENTATION_ITEM.self)
              let _TEMP8 = _TEMP7?.VALUE_COMPONENT
              let _TEMP9 = SDAI.TYPEOF(_TEMP8)
              let _TEMP10 = _TEMP6 .==. _TEMP9
              let _TEMP11 = _TEMP3 && _TEMP10
              return _TEMP11 }
          let _TEMP5 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*sCOMPOUND_ITEM_DEFINITION*/_TEMP4))
          let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP7 = _TEMP1 && _TEMP6
          return _TEMP7 }
      let _TEMP9 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*sCOMPOUND_ITEM_DEFINITION*/_TEMP8))
      let _TEMP10 = _TEMP9 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
      let _TEMP11 = _TEMP5 || _TEMP10
      return _TEMP11
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
  ENTITY shape_data_quality_value_range
    SUBTYPE OF ( compound_representation_item );
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.SET_REPRESENTATION_ITEM' IN TYPEOF( SELF\
               compound_representation_item.item_element ) ) AND ( SIZEOF( SELF\compound_representation_item.
               item_element ) = 2 ) AND ( ( SIZEOF( QUERY ( i1 <* SELF\compound_representation_item.
               item_element | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MEASURE_REPRESENTATION_ITEM' 
               IN TYPEOF( i1 ) ) ) ) = 2 ) OR ( SIZEOF( QUERY ( i2 <* SELF\compound_representation_item.
               item_element | ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VALUE_REPRESENTATION_ITEM' 
               IN TYPEOF( i2 ) ) ) ) = 2 ) ) );
      wr2: ( ( SIZEOF( QUERY ( i <* SELF\compound_representation_item.item_element | ( i.name = 'upper limit' ) ) ) 
               = 1 ) AND ( SIZEOF( QUERY ( i <* SELF\compound_representation_item.item_element | ( i.name = 
               'lower limit'  ) ) ) = 1 ) );
      wr3: ( ( SIZEOF( QUERY ( i1 <* SELF\compound_representation_item.item_element | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MEASURE_REPRESENTATION_ITEM'  IN TYPEOF( i1 ) ) 
               AND ( SIZEOF( QUERY ( i2 <* SELF\compound_representation_item.item_element | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.MEASURE_REPRESENTATION_ITEM'  IN TYPEOF( i2 ) ) 
               AND ( i1 :<>: i2 ) AND ( i1\measure_with_unit.unit_component :=: i2\measure_with_unit.
               unit_component ) ) ) ) = 1 ) ) ) ) = 2 ) OR ( SIZEOF( QUERY ( i1 <* SELF\
               compound_representation_item.item_element | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VALUE_REPRESENTATION_ITEM'  IN TYPEOF( i1 ) ) 
               AND ( SIZEOF( QUERY ( i2 <* SELF\compound_representation_item.item_element | ( ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.VALUE_REPRESENTATION_ITEM'  IN TYPEOF( i2 ) ) 
               AND ( i1 :<>: i2 ) AND ( TYPEOF( i1\value_representation_item.value_component ) = TYPEOF( i2\
               value_representation_item.value_component ) ) ) ) ) = 1 ) ) ) ) = 2 ) );
  END_ENTITY; -- shape_data_quality_value_range (line:28819 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSHAPE_DATA_QUALITY_VALUE_RANGE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _shape_data_quality_value_range.self
    }
    public let partialEntity: _shape_data_quality_value_range

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eCOMPOUND_REPRESENTATION_ITEM: eCOMPOUND_REPRESENTATION_ITEM 	// [2]
    public var super_eSHAPE_DATA_QUALITY_VALUE_RANGE: eSHAPE_DATA_QUALITY_VALUE_RANGE { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eCOMPOUND_REPRESENTATION_ITEM`` )
    public var ITEM_ELEMENT: sCOMPOUND_ITEM_DEFINITION {
      get {
        return SDAI.UNWRAP( super_eCOMPOUND_REPRESENTATION_ITEM.partialEntity._item_element )
      }
      set(newValue) {
        let partial = super_eCOMPOUND_REPRESENTATION_ITEM.partialEntity
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
      guard let partial = complexEntity?.partialEntityInstance(_shape_data_quality_value_range.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eCOMPOUND_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eCOMPOUND_REPRESENTATION_ITEM = super2

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _shape_data_quality_value_range.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _shape_data_quality_value_range.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _shape_data_quality_value_range.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SHAPE_DATA_QUALITY_VALUE_RANGE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eCOMPOUND_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSHAPE_DATA_QUALITY_VALUE_RANGE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ITEM_ELEMENT", keyPath: \eSHAPE_DATA_QUALITY_VALUE_RANGE.ITEM_ELEMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSHAPE_DATA_QUALITY_VALUE_RANGE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}