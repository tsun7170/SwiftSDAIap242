/* file: solid_with_incomplete_rectangular_pattern.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY solid_with_incomplete_rectangular_pattern
    SUBTYPE OF ( solid_with_rectangular_pattern );
      omitted_instances  : SET [1 : ?] OF LIST [2 : 2] OF positive_integer;
    WHERE
      wr1: ( NOT ( [1, 1] IN omitted_instances ) );
      wr2: ( SIZEOF( omitted_instances ) < ( ( SELF\solid_with_rectangular_pattern.row_count * SELF\
               solid_with_rectangular_pattern.column_count ) - 1 ) );
      wr3: ( SIZEOF( QUERY ( q <* omitted_instances | ( ( q[1] > SELF\solid_with_rectangular_pattern.
               row_count ) OR ( q[2] > SELF\solid_with_rectangular_pattern.column_count ) ) ) ) = 0 );
  END_ENTITY; -- solid_with_incomplete_rectangular_pattern (line:30083 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	solid_model
    (no local attributes)

  SUPER- ENTITY(4)	modified_solid
    ATTR:  rationale,	TYPE: text -- EXPLICIT

    ATTR:  base_solid,	TYPE: base_solid_select -- EXPLICIT


  SUPER- ENTITY(5)	modified_solid_with_placed_configuration
    ATTR:  placing,	TYPE: axis2_placement_3d -- EXPLICIT


  SUPER- ENTITY(6)	solid_with_shape_element_pattern
    ATTR:  replicated_element,	TYPE: modified_solid_with_placed_configuration -- EXPLICIT


  SUPER- ENTITY(7)	solid_with_rectangular_pattern
    ATTR:  row_count,	TYPE: positive_integer -- EXPLICIT

    ATTR:  column_count,	TYPE: positive_integer -- EXPLICIT

    ATTR:  row_spacing,	TYPE: length_measure -- EXPLICIT

    ATTR:  column_spacing,	TYPE: length_measure -- EXPLICIT


  ENTITY(SELF)	solid_with_incomplete_rectangular_pattern
    ATTR:  omitted_instances,	TYPE: SET [1 : ?] OF LIST [2 : 2] OF positive_integer -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _solid_with_incomplete_rectangular_pattern : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _omitted_instances: SDAI.SET<SDAI.LIST<tPOSITIVE_INTEGER>/*[2:2]*/ >/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._omitted_instances.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._omitted_instances.value.isValueEqualOptionally(to: rhs._omitted_instances.value, visited: &comppairs)	{
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
      if let comp = self._omitted_instances.value.isValueEqualOptionally(to: rhs._omitted_instances.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = ([SDAI.AIE(SDAI.INTEGER(1)), 
        SDAI.AIE(SDAI.INTEGER(1))] as [SDAI.AggregationInitializerElement<SDAI.INTEGER>])
      let _TEMP2 = SDAI.aggregate(SELF.OMITTED_INSTANCES, contains: SDAI.LIST<tPOSITIVE_INTEGER>(
        bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: SDAI.INTEGER(2), 
        /*SDAI.AGGREGATE<SDAI.INTEGER>*/_TEMP1))
      let _TEMP3 =  !_TEMP2
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SELF.OMITTED_INSTANCES)
      let _TEMP2 = SELF.GROUP_REF(eSOLID_WITH_RECTANGULAR_PATTERN.self)
      let _TEMP3 = _TEMP2?.ROW_COUNT
      let _TEMP4 = SELF.GROUP_REF(eSOLID_WITH_RECTANGULAR_PATTERN.self)
      let _TEMP5 = _TEMP4?.COLUMN_COUNT
      let _TEMP6 = _TEMP3 * _TEMP5
      let _TEMP7 = _TEMP6 - SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP8 = _TEMP1 < _TEMP7
      return _TEMP8
    }
    public static func WHERE_wr3(SELF: eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.OMITTED_INSTANCES
        .QUERY{ Q in 

          let _TEMP1 = Q[1]
          let _TEMP2 = SELF.GROUP_REF(eSOLID_WITH_RECTANGULAR_PATTERN.self)
          let _TEMP3 = _TEMP2?.ROW_COUNT
          let _TEMP4 = _TEMP1 > _TEMP3
          let _TEMP5 = Q[2]
          let _TEMP6 = SELF.GROUP_REF(eSOLID_WITH_RECTANGULAR_PATTERN.self)
          let _TEMP7 = _TEMP6?.COLUMN_COUNT
          let _TEMP8 = _TEMP5 > _TEMP7
          let _TEMP9 = _TEMP4 || _TEMP8
          return _TEMP9 }
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(OMITTED_INSTANCES: SDAI.SET<SDAI.LIST<tPOSITIVE_INTEGER>/*[2:2]*/ >/*[1:nil]*/ ) {
      self._omitted_instances = OMITTED_INSTANCES
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<SDAI.LIST<
        tPOSITIVE_INTEGER>>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( OMITTED_INSTANCES: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY solid_with_incomplete_rectangular_pattern
    SUBTYPE OF ( solid_with_rectangular_pattern );
      omitted_instances  : SET [1 : ?] OF LIST [2 : 2] OF positive_integer;
    WHERE
      wr1: ( NOT ( [1, 1] IN omitted_instances ) );
      wr2: ( SIZEOF( omitted_instances ) < ( ( SELF\solid_with_rectangular_pattern.row_count * SELF\
               solid_with_rectangular_pattern.column_count ) - 1 ) );
      wr3: ( SIZEOF( QUERY ( q <* omitted_instances | ( ( q[1] > SELF\solid_with_rectangular_pattern.
               row_count ) OR ( q[2] > SELF\solid_with_rectangular_pattern.column_count ) ) ) ) = 0 );
  END_ENTITY; -- solid_with_incomplete_rectangular_pattern (line:30083 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _solid_with_incomplete_rectangular_pattern.self
    }
    public let partialEntity: _solid_with_incomplete_rectangular_pattern

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSOLID_MODEL: eSOLID_MODEL 	// [3]
    public let super_eMODIFIED_SOLID: eMODIFIED_SOLID 	// [4]
    public let super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION 	// [5]
    public let super_eSOLID_WITH_SHAPE_ELEMENT_PATTERN: eSOLID_WITH_SHAPE_ELEMENT_PATTERN 	// [6]
    public let super_eSOLID_WITH_RECTANGULAR_PATTERN: eSOLID_WITH_RECTANGULAR_PATTERN 	// [7]
    public var super_eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN: eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN { return self } 	// [8]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_RECTANGULAR_PATTERN`` )
    public var ROW_SPACING: tLENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( super_eSOLID_WITH_RECTANGULAR_PATTERN.partialEntity._row_spacing )
      }
      set(newValue) {
        let partial = super_eSOLID_WITH_RECTANGULAR_PATTERN.partialEntity
        partial._row_spacing = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_RECTANGULAR_PATTERN`` )
    public var ROW_COUNT: tPOSITIVE_INTEGER {
      get {
        return SDAI.UNWRAP( super_eSOLID_WITH_RECTANGULAR_PATTERN.partialEntity._row_count )
      }
      set(newValue) {
        let partial = super_eSOLID_WITH_RECTANGULAR_PATTERN.partialEntity
        partial._row_count = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_SHAPE_ELEMENT_PATTERN`` )
    public var REPLICATED_ELEMENT: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION {
      get {
        return SDAI.UNWRAP( super_eSOLID_WITH_SHAPE_ELEMENT_PATTERN.partialEntity._replicated_element )
      }
      set(newValue) {
        let partial = super_eSOLID_WITH_SHAPE_ELEMENT_PATTERN.partialEntity
        partial._replicated_element = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN`` )
    public var OMITTED_INSTANCES: SDAI.SET<SDAI.LIST<tPOSITIVE_INTEGER>/*[2:2]*/ >/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._omitted_instances )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._omitted_instances = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMODIFIED_SOLID`` )
    public var RATIONALE: tTEXT {
      get {
        return SDAI.UNWRAP( super_eMODIFIED_SOLID.partialEntity._rationale )
      }
      set(newValue) {
        let partial = super_eMODIFIED_SOLID.partialEntity
        partial._rationale = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMODIFIED_SOLID`` )
    public var BASE_SOLID: sBASE_SOLID_SELECT {
      get {
        return SDAI.UNWRAP( super_eMODIFIED_SOLID.partialEntity._base_solid )
      }
      set(newValue) {
        let partial = super_eMODIFIED_SOLID.partialEntity
        partial._base_solid = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_RECTANGULAR_PATTERN`` )
    public var COLUMN_COUNT: tPOSITIVE_INTEGER {
      get {
        return SDAI.UNWRAP( super_eSOLID_WITH_RECTANGULAR_PATTERN.partialEntity._column_count )
      }
      set(newValue) {
        let partial = super_eSOLID_WITH_RECTANGULAR_PATTERN.partialEntity
        partial._column_count = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSOLID_WITH_RECTANGULAR_PATTERN`` )
    public var COLUMN_SPACING: tLENGTH_MEASURE {
      get {
        return SDAI.UNWRAP( super_eSOLID_WITH_RECTANGULAR_PATTERN.partialEntity._column_spacing )
      }
      set(newValue) {
        let partial = super_eSOLID_WITH_RECTANGULAR_PATTERN.partialEntity
        partial._column_spacing = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION`` )
    public var PLACING: eAXIS2_PLACEMENT_3D {
      get {
        return SDAI.UNWRAP( super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.partialEntity._placing )
      }
      set(newValue) {
        let partial = super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.partialEntity
        partial._placing = SDAI.UNWRAP(newValue)
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

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_REPRESENTATION_ITEM`` )
    public var DIM: tDIMENSION_COUNT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIM") {
          return cached.value as! tDIMENSION_COUNT? 
        }
        let origin = super_eGEOMETRIC_REPRESENTATION_ITEM
        let value = tDIMENSION_COUNT(origin.partialEntity._dim__getter(SELF: origin))
        updateCache(derivedAttributeName:"DIM", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_solid_with_incomplete_rectangular_pattern.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSOLID_MODEL.self) else { return nil }
      self.super_eSOLID_MODEL = super3

      guard let super4 = complexEntity?.entityReference(eMODIFIED_SOLID.self) else { return nil }
      self.super_eMODIFIED_SOLID = super4

      guard let super5 = complexEntity?.entityReference(eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.self) else { return nil }
      self.super_eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION = super5

      guard let super6 = complexEntity?.entityReference(eSOLID_WITH_SHAPE_ELEMENT_PATTERN.self) else { return nil }
      self.super_eSOLID_WITH_SHAPE_ELEMENT_PATTERN = super6

      guard let super7 = complexEntity?.entityReference(eSOLID_WITH_RECTANGULAR_PATTERN.self) else { return nil }
      self.super_eSOLID_WITH_RECTANGULAR_PATTERN = super7

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
      result[prefix2 + " .WHERE_wr1"] = _solid_with_incomplete_rectangular_pattern.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _solid_with_incomplete_rectangular_pattern.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _solid_with_incomplete_rectangular_pattern.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSOLID_MODEL.self)
      entityDef.add(supertype: eMODIFIED_SOLID.self)
      entityDef.add(supertype: eMODIFIED_SOLID_WITH_PLACED_CONFIGURATION.self)
      entityDef.add(supertype: eSOLID_WITH_SHAPE_ELEMENT_PATTERN.self)
      entityDef.add(supertype: eSOLID_WITH_RECTANGULAR_PATTERN.self)
      entityDef.add(supertype: eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ROW_SPACING", keyPath: \eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.ROW_SPACING, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ROW_COUNT", keyPath: \eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.ROW_COUNT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REPLICATED_ELEMENT", keyPath: \eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.REPLICATED_ELEMENT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "OMITTED_INSTANCES", keyPath: \eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.OMITTED_INSTANCES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RATIONALE", keyPath: \eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.RATIONALE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASE_SOLID", keyPath: \eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.BASE_SOLID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "COLUMN_COUNT", keyPath: \eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.COLUMN_COUNT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COLUMN_SPACING", keyPath: \eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.COLUMN_SPACING, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PLACING", keyPath: \eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.PLACING, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eSOLID_WITH_INCOMPLETE_RECTANGULAR_PATTERN.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
