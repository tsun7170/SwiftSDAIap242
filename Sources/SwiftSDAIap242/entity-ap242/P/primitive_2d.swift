/* file: primitive_2d.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY primitive_2d
    SUPERTYPE OF ( 
        ONEOF ( 
            circular_area, 
            elliptic_area, 
            rectangular_area, 
            polygonal_area, 
            half_space_2d ) )
    SUBTYPE OF ( geometric_representation_item );
    WHERE
      wr1: ( SELF\geometric_representation_item.dim = 2 );
  END_ENTITY; -- primitive_2d (line:25781 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  ENTITY(SELF)	primitive_2d
    (no local attributes)

  SUB- ENTITY(4)	elliptic_area
    ATTR:  position,	TYPE: axis2_placement_2d -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  semi_axis_1,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  semi_axis_2,	TYPE: positive_length_measure -- EXPLICIT


  SUB- ENTITY(5)	circular_area
    ATTR:  centre,	TYPE: cartesian_point -- EXPLICIT

    ATTR:  radius,	TYPE: positive_length_measure -- EXPLICIT


  SUB- ENTITY(6)	rectangular_area
    ATTR:  position,	TYPE: axis2_placement_2d -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  x,	TYPE: positive_length_measure -- EXPLICIT

    ATTR:  y,	TYPE: positive_length_measure -- EXPLICIT


  SUB- ENTITY(7)	polygonal_area
    ATTR:  bounds,	TYPE: LIST [3 : ?] OF UNIQUE cartesian_point -- EXPLICIT


  SUB- ENTITY(8)	area_with_outer_boundary
    REDCR: base_curve,	TYPE: composite_curve -- EXPLICIT
      -- OVERRIDING ENTITY: half_space_2d


  SUB- ENTITY(9)	half_space_2d
    ATTR:  base_curve,	TYPE: curve -- EXPLICIT
      -- possibly overriden by
          ENTITY: area_with_outer_boundary,	TYPE: composite_curve

    ATTR:  agreement_flag,	TYPE: BOOLEAN -- EXPLICIT


  SUB- ENTITY(10)	primitive_2d_with_inner_boundary
    REDCR: item_element,	TYPE: compound_inner_area_boundary -- EXPLICIT
      -- OVERRIDING ENTITY: compound_representation_item

    ATTR:  inner_boundary,	TYPE: compound_inner_area_boundary -- DERIVED
      := SELF\compound_representation_item.item_element


  SUB- ENTITY(11)	path_area_with_parameters
    (no local attributes)

  SUB- ENTITY(12)	complex_area
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _primitive_2d : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRIMITIVE_2D.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
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
    public static func WHERE_wr1(SELF: ePRIMITIVE_2D?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eGEOMETRIC_REPRESENTATION_ITEM.self)
      let _TEMP2 = _TEMP1?.DIM
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(2))
      return _TEMP3
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
  ENTITY primitive_2d
    SUPERTYPE OF ( 
        ONEOF ( 
            circular_area, 
            elliptic_area, 
            rectangular_area, 
            polygonal_area, 
            half_space_2d ) )
    SUBTYPE OF ( geometric_representation_item );
    WHERE
      wr1: ( SELF\geometric_representation_item.dim = 2 );
  END_ENTITY; -- primitive_2d (line:25781 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRIMITIVE_2D : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _primitive_2d.self
    }
    public let partialEntity: _primitive_2d

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public var super_ePRIMITIVE_2D: ePRIMITIVE_2D { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eELLIPTIC_AREA: eELLIPTIC_AREA? {	// [4]
      return self.complexEntity.entityReference(eELLIPTIC_AREA.self)
    }

    public var sub_eCIRCULAR_AREA: eCIRCULAR_AREA? {	// [5]
      return self.complexEntity.entityReference(eCIRCULAR_AREA.self)
    }

    public var sub_eRECTANGULAR_AREA: eRECTANGULAR_AREA? {	// [6]
      return self.complexEntity.entityReference(eRECTANGULAR_AREA.self)
    }

    public var sub_ePOLYGONAL_AREA: ePOLYGONAL_AREA? {	// [7]
      return self.complexEntity.entityReference(ePOLYGONAL_AREA.self)
    }

    public var sub_eAREA_WITH_OUTER_BOUNDARY: eAREA_WITH_OUTER_BOUNDARY? {	// [8]
      return self.complexEntity.entityReference(eAREA_WITH_OUTER_BOUNDARY.self)
    }

    public var sub_eHALF_SPACE_2D: eHALF_SPACE_2D? {	// [9]
      return self.complexEntity.entityReference(eHALF_SPACE_2D.self)
    }

    public var sub_ePRIMITIVE_2D_WITH_INNER_BOUNDARY: ePRIMITIVE_2D_WITH_INNER_BOUNDARY? {	// [10]
      return self.complexEntity.entityReference(ePRIMITIVE_2D_WITH_INNER_BOUNDARY.self)
    }

    public var sub_ePATH_AREA_WITH_PARAMETERS: ePATH_AREA_WITH_PARAMETERS? {	// [11]
      return self.complexEntity.entityReference(ePATH_AREA_WITH_PARAMETERS.self)
    }

    public var sub_eCOMPLEX_AREA: eCOMPLEX_AREA? {	// [12]
      return self.complexEntity.entityReference(eCOMPLEX_AREA.self)
    }


    //MARK: ATTRIBUTES
    // POSITION: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCIRCULAR_AREA`` )
    public var CENTRE: eCARTESIAN_POINT?  {
      get {
        return sub_eCIRCULAR_AREA?.partialEntity._centre
      }
      set(newValue) {
        guard let partial = sub_eCIRCULAR_AREA?.super_eCIRCULAR_AREA.partialEntity else { return }
        partial._centre = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePOLYGONAL_AREA`` )
    public var BOUNDS: (SDAI.LIST_UNIQUE<eCARTESIAN_POINT>/*[3:nil]*/ )?  {
      get {
        return sub_ePOLYGONAL_AREA?.partialEntity._bounds
      }
      set(newValue) {
        guard let partial = sub_ePOLYGONAL_AREA?.super_ePOLYGONAL_AREA.partialEntity else { return }
        partial._bounds = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eRECTANGULAR_AREA`` )
    public var X: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eRECTANGULAR_AREA?.partialEntity._x
      }
      set(newValue) {
        guard let partial = sub_eRECTANGULAR_AREA?.super_eRECTANGULAR_AREA.partialEntity else { return }
        partial._x = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eRECTANGULAR_AREA`` )
    public var Y: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eRECTANGULAR_AREA?.partialEntity._y
      }
      set(newValue) {
        guard let partial = sub_eRECTANGULAR_AREA?.super_eRECTANGULAR_AREA.partialEntity else { return }
        partial._y = SDAI.UNWRAP(newValue)
      }
    }

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
    /// - origin: SUB( ``eHALF_SPACE_2D`` )
    public var AGREEMENT_FLAG: SDAI.BOOLEAN?  {
      get {
        return sub_eHALF_SPACE_2D?.partialEntity._agreement_flag
      }
      set(newValue) {
        guard let partial = sub_eHALF_SPACE_2D?.super_eHALF_SPACE_2D.partialEntity else { return }
        partial._agreement_flag = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCIRCULAR_AREA`` )
    public var RADIUS: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eCIRCULAR_AREA?.partialEntity._radius
      }
      set(newValue) {
        guard let partial = sub_eCIRCULAR_AREA?.super_eCIRCULAR_AREA.partialEntity else { return }
        partial._radius = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eHALF_SPACE_2D`` )
    public var BASE_CURVE: eCURVE?  {
      get {
        return sub_eHALF_SPACE_2D?.partialEntity._base_curve
      }
      set(newValue) {
        guard let partial = sub_eHALF_SPACE_2D?.super_eHALF_SPACE_2D.partialEntity else { return }
        partial._base_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SUB( ``ePRIMITIVE_2D_WITH_INNER_BOUNDARY`` )
    public var ITEM_ELEMENT: sCOMPOUND_INNER_AREA_BOUNDARY?  {
      get {
        return sCOMPOUND_INNER_AREA_BOUNDARY( sub_ePRIMITIVE_2D_WITH_INNER_BOUNDARY?.super_eCOMPOUND_REPRESENTATION_ITEM
          .partialEntity._item_element )
      }
      set(newValue) {
        guard let partial = sub_ePRIMITIVE_2D_WITH_INNER_BOUNDARY?.super_eCOMPOUND_REPRESENTATION_ITEM
          .partialEntity else { return }
        partial._item_element = SDAI.UNWRAP(
          sCOMPOUND_ITEM_DEFINITION(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eELLIPTIC_AREA`` )
    public var SEMI_AXIS_1: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eELLIPTIC_AREA?.partialEntity._semi_axis_1
      }
      set(newValue) {
        guard let partial = sub_eELLIPTIC_AREA?.super_eELLIPTIC_AREA.partialEntity else { return }
        partial._semi_axis_1 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eELLIPTIC_AREA`` )
    public var SEMI_AXIS_2: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return sub_eELLIPTIC_AREA?.partialEntity._semi_axis_2
      }
      set(newValue) {
        guard let partial = sub_eELLIPTIC_AREA?.super_eELLIPTIC_AREA.partialEntity else { return }
        partial._semi_axis_2 = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_primitive_2d.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

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
      result[prefix2 + " .WHERE_wr1"] = _primitive_2d.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRIMITIVE_2D", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePRIMITIVE_2D.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CENTRE", keyPath: \ePRIMITIVE_2D.CENTRE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BOUNDS", keyPath: \ePRIMITIVE_2D.BOUNDS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "X", keyPath: \ePRIMITIVE_2D.X, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "Y", keyPath: \ePRIMITIVE_2D.Y, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "INNER_BOUNDARY", keyPath: \ePRIMITIVE_2D.INNER_BOUNDARY, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "AGREEMENT_FLAG", keyPath: \ePRIMITIVE_2D.AGREEMENT_FLAG, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RADIUS", keyPath: \ePRIMITIVE_2D.RADIUS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASE_CURVE", keyPath: \ePRIMITIVE_2D.BASE_CURVE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEM_ELEMENT", keyPath: \ePRIMITIVE_2D.ITEM_ELEMENT, 
        kind: .explicitRedeclaring, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SEMI_AXIS_1", keyPath: \ePRIMITIVE_2D.SEMI_AXIS_1, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SEMI_AXIS_2", keyPath: \ePRIMITIVE_2D.SEMI_AXIS_2, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \ePRIMITIVE_2D.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \ePRIMITIVE_2D.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
