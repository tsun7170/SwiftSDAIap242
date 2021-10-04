/* file: hexahedron_volume.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY hexahedron_volume
    SUBTYPE OF ( volume );
      points  : LIST [8 : 8] OF cartesian_point;
    WHERE
      wr1 : ( above_plane( points[1], points[2], points[3], points[4] ) = 0 );
      wr2 : ( above_plane( points[5], points[8], points[7], points[6] ) = 0 );
      wr3 : ( above_plane( points[1], points[4], points[8], points[5] ) = 0 );
      wr4 : ( above_plane( points[4], points[3], points[7], points[8] ) = 0 );
      wr5 : ( above_plane( points[3], points[2], points[6], points[7] ) = 0 );
      wr6 : ( above_plane( points[1], points[5], points[6], points[2] ) = 0 );
      wr7 : same_side( [points[1], points[2], points[3]], [points[5], points[6], points[7], points[8]] );
      wr8 : same_side( [points[1], points[4], points[8]], [points[3], points[7], points[6], points[2]] );
      wr9 : same_side( [points[1], points[2], points[5]], [points[3], points[7], points[8], points[4]] );
      wr10: same_side( [points[5], points[6], points[7]], [points[1], points[2], points[3], points[4]] );
      wr11: same_side( [points[3], points[7], points[6]], [points[1], points[4], points[8], points[5]] );
      wr12: same_side( [points[3], points[7], points[8]], [points[1], points[5], points[6], points[2]] );
      wr13: ( points[1].dim = 3 );
  END_ENTITY; -- hexahedron_volume (line:17416 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	volume
    (no local attributes)

  ENTITY(SELF)	hexahedron_volume
    ATTR:  points,	TYPE: LIST [8 : 8] OF cartesian_point -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _hexahedron_volume : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eHEXAHEDRON_VOLUME.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _points: SDAI.LIST<eCARTESIAN_POINT>/*[8:8]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._points.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._points.value.isValueEqualOptionally(to: rhs._points.value, visited: &comppairs)	{
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
      if let comp = self._points.value.isValueEqualOptionally(to: rhs._points.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[1]
      let _TEMP2 = SELF.POINTS[2]
      let _TEMP3 = SELF.POINTS[3]
      let _TEMP4 = SELF.POINTS[4]
      let _TEMP5 = ABOVE_PLANE(P1: _TEMP1, 
                               P2: _TEMP2, 
                               P3: _TEMP3, 
                               P4: _TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP6
    }
    public static func WHERE_wr2(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[5]
      let _TEMP2 = SELF.POINTS[8]
      let _TEMP3 = SELF.POINTS[7]
      let _TEMP4 = SELF.POINTS[6]
      let _TEMP5 = ABOVE_PLANE(P1: _TEMP1, 
                               P2: _TEMP2, 
                               P3: _TEMP3, 
                               P4: _TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP6
    }
    public static func WHERE_wr3(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[1]
      let _TEMP2 = SELF.POINTS[4]
      let _TEMP3 = SELF.POINTS[8]
      let _TEMP4 = SELF.POINTS[5]
      let _TEMP5 = ABOVE_PLANE(P1: _TEMP1, 
                               P2: _TEMP2, 
                               P3: _TEMP3, 
                               P4: _TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP6
    }
    public static func WHERE_wr4(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[4]
      let _TEMP2 = SELF.POINTS[3]
      let _TEMP3 = SELF.POINTS[7]
      let _TEMP4 = SELF.POINTS[8]
      let _TEMP5 = ABOVE_PLANE(P1: _TEMP1, 
                               P2: _TEMP2, 
                               P3: _TEMP3, 
                               P4: _TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP6
    }
    public static func WHERE_wr5(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[3]
      let _TEMP2 = SELF.POINTS[2]
      let _TEMP3 = SELF.POINTS[6]
      let _TEMP4 = SELF.POINTS[7]
      let _TEMP5 = ABOVE_PLANE(P1: _TEMP1, 
                               P2: _TEMP2, 
                               P3: _TEMP3, 
                               P4: _TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP6
    }
    public static func WHERE_wr6(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[1]
      let _TEMP2 = SELF.POINTS[5]
      let _TEMP3 = SELF.POINTS[6]
      let _TEMP4 = SELF.POINTS[2]
      let _TEMP5 = ABOVE_PLANE(P1: _TEMP1, 
                               P2: _TEMP2, 
                               P3: _TEMP3, 
                               P4: _TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP6
    }
    public static func WHERE_wr7(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[1]
      let _TEMP2 = SELF.POINTS[2]
      let _TEMP3 = SELF.POINTS[3]
      let _TEMP4 = SDAI.LIST<eCARTESIAN_POINT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(3)), bound2: SDAI.INTEGER(3), 
        ([SDAI.AIE(_TEMP1), SDAI.AIE(_TEMP2), 
        SDAI.AIE(_TEMP3)] as [SDAI.AggregationInitializerElement<eCARTESIAN_POINT>]))
      let _TEMP5 = SELF.POINTS[5]
      let _TEMP6 = SELF.POINTS[6]
      let _TEMP7 = SELF.POINTS[7]
      let _TEMP8 = SELF.POINTS[8]
      let _TEMP9 = SDAI.LIST<eCARTESIAN_POINT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: (nil as SDAI.INTEGER?), 
        ([SDAI.AIE(_TEMP5), SDAI.AIE(_TEMP6), 
        SDAI.AIE(_TEMP7), SDAI.AIE(_TEMP8)] as [SDAI.AggregationInitializerElement<eCARTESIAN_POINT>]))
      let _TEMP10 = SAME_SIDE(PLANE_PTS: _TEMP4, 
                              TEST_POINTS: _TEMP9)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP10)
    }
    public static func WHERE_wr8(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[1]
      let _TEMP2 = SELF.POINTS[4]
      let _TEMP3 = SELF.POINTS[8]
      let _TEMP4 = SDAI.LIST<eCARTESIAN_POINT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(3)), bound2: SDAI.INTEGER(3), 
        ([SDAI.AIE(_TEMP1), SDAI.AIE(_TEMP2), 
        SDAI.AIE(_TEMP3)] as [SDAI.AggregationInitializerElement<eCARTESIAN_POINT>]))
      let _TEMP5 = SELF.POINTS[3]
      let _TEMP6 = SELF.POINTS[7]
      let _TEMP7 = SELF.POINTS[6]
      let _TEMP8 = SELF.POINTS[2]
      let _TEMP9 = SDAI.LIST<eCARTESIAN_POINT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: (nil as SDAI.INTEGER?), 
        ([SDAI.AIE(_TEMP5), SDAI.AIE(_TEMP6), 
        SDAI.AIE(_TEMP7), SDAI.AIE(_TEMP8)] as [SDAI.AggregationInitializerElement<eCARTESIAN_POINT>]))
      let _TEMP10 = SAME_SIDE(PLANE_PTS: _TEMP4, 
                              TEST_POINTS: _TEMP9)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP10)
    }
    public static func WHERE_wr9(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[1]
      let _TEMP2 = SELF.POINTS[2]
      let _TEMP3 = SELF.POINTS[5]
      let _TEMP4 = SDAI.LIST<eCARTESIAN_POINT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(3)), bound2: SDAI.INTEGER(3), 
        ([SDAI.AIE(_TEMP1), SDAI.AIE(_TEMP2), 
        SDAI.AIE(_TEMP3)] as [SDAI.AggregationInitializerElement<eCARTESIAN_POINT>]))
      let _TEMP5 = SELF.POINTS[3]
      let _TEMP6 = SELF.POINTS[7]
      let _TEMP7 = SELF.POINTS[8]
      let _TEMP8 = SELF.POINTS[4]
      let _TEMP9 = SDAI.LIST<eCARTESIAN_POINT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: (nil as SDAI.INTEGER?), 
        ([SDAI.AIE(_TEMP5), SDAI.AIE(_TEMP6), 
        SDAI.AIE(_TEMP7), SDAI.AIE(_TEMP8)] as [SDAI.AggregationInitializerElement<eCARTESIAN_POINT>]))
      let _TEMP10 = SAME_SIDE(PLANE_PTS: _TEMP4, 
                              TEST_POINTS: _TEMP9)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP10)
    }
    public static func WHERE_wr10(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[5]
      let _TEMP2 = SELF.POINTS[6]
      let _TEMP3 = SELF.POINTS[7]
      let _TEMP4 = SDAI.LIST<eCARTESIAN_POINT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(3)), bound2: SDAI.INTEGER(3), 
        ([SDAI.AIE(_TEMP1), SDAI.AIE(_TEMP2), 
        SDAI.AIE(_TEMP3)] as [SDAI.AggregationInitializerElement<eCARTESIAN_POINT>]))
      let _TEMP5 = SELF.POINTS[1]
      let _TEMP6 = SELF.POINTS[2]
      let _TEMP7 = SELF.POINTS[3]
      let _TEMP8 = SELF.POINTS[4]
      let _TEMP9 = SDAI.LIST<eCARTESIAN_POINT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: (nil as SDAI.INTEGER?), 
        ([SDAI.AIE(_TEMP5), SDAI.AIE(_TEMP6), 
        SDAI.AIE(_TEMP7), SDAI.AIE(_TEMP8)] as [SDAI.AggregationInitializerElement<eCARTESIAN_POINT>]))
      let _TEMP10 = SAME_SIDE(PLANE_PTS: _TEMP4, 
                              TEST_POINTS: _TEMP9)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP10)
    }
    public static func WHERE_wr11(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[3]
      let _TEMP2 = SELF.POINTS[7]
      let _TEMP3 = SELF.POINTS[6]
      let _TEMP4 = SDAI.LIST<eCARTESIAN_POINT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(3)), bound2: SDAI.INTEGER(3), 
        ([SDAI.AIE(_TEMP1), SDAI.AIE(_TEMP2), 
        SDAI.AIE(_TEMP3)] as [SDAI.AggregationInitializerElement<eCARTESIAN_POINT>]))
      let _TEMP5 = SELF.POINTS[1]
      let _TEMP6 = SELF.POINTS[4]
      let _TEMP7 = SELF.POINTS[8]
      let _TEMP8 = SELF.POINTS[5]
      let _TEMP9 = SDAI.LIST<eCARTESIAN_POINT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: (nil as SDAI.INTEGER?), 
        ([SDAI.AIE(_TEMP5), SDAI.AIE(_TEMP6), 
        SDAI.AIE(_TEMP7), SDAI.AIE(_TEMP8)] as [SDAI.AggregationInitializerElement<eCARTESIAN_POINT>]))
      let _TEMP10 = SAME_SIDE(PLANE_PTS: _TEMP4, 
                              TEST_POINTS: _TEMP9)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP10)
    }
    public static func WHERE_wr12(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[3]
      let _TEMP2 = SELF.POINTS[7]
      let _TEMP3 = SELF.POINTS[8]
      let _TEMP4 = SDAI.LIST<eCARTESIAN_POINT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(3)), bound2: SDAI.INTEGER(3), 
        ([SDAI.AIE(_TEMP1), SDAI.AIE(_TEMP2), 
        SDAI.AIE(_TEMP3)] as [SDAI.AggregationInitializerElement<eCARTESIAN_POINT>]))
      let _TEMP5 = SELF.POINTS[1]
      let _TEMP6 = SELF.POINTS[5]
      let _TEMP7 = SELF.POINTS[6]
      let _TEMP8 = SELF.POINTS[2]
      let _TEMP9 = SDAI.LIST<eCARTESIAN_POINT>(bound1: SDAI.UNWRAP(SDAI.INTEGER(2)), bound2: (nil as SDAI.INTEGER?), 
        ([SDAI.AIE(_TEMP5), SDAI.AIE(_TEMP6), 
        SDAI.AIE(_TEMP7), SDAI.AIE(_TEMP8)] as [SDAI.AggregationInitializerElement<eCARTESIAN_POINT>]))
      let _TEMP10 = SAME_SIDE(PLANE_PTS: _TEMP4, 
                              TEST_POINTS: _TEMP9)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP10)
    }
    public static func WHERE_wr13(SELF: eHEXAHEDRON_VOLUME?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.POINTS[1]
      let _TEMP2 = _TEMP1?.DIM
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(3))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(POINTS: SDAI.LIST<eCARTESIAN_POINT>/*[8:8]*/ ) {
      self._points = POINTS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<eCARTESIAN_POINT>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( POINTS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY hexahedron_volume
    SUBTYPE OF ( volume );
      points  : LIST [8 : 8] OF cartesian_point;
    WHERE
      wr1 : ( above_plane( points[1], points[2], points[3], points[4] ) = 0 );
      wr2 : ( above_plane( points[5], points[8], points[7], points[6] ) = 0 );
      wr3 : ( above_plane( points[1], points[4], points[8], points[5] ) = 0 );
      wr4 : ( above_plane( points[4], points[3], points[7], points[8] ) = 0 );
      wr5 : ( above_plane( points[3], points[2], points[6], points[7] ) = 0 );
      wr6 : ( above_plane( points[1], points[5], points[6], points[2] ) = 0 );
      wr7 : same_side( [points[1], points[2], points[3]], [points[5], points[6], points[7], points[8]] );
      wr8 : same_side( [points[1], points[4], points[8]], [points[3], points[7], points[6], points[2]] );
      wr9 : same_side( [points[1], points[2], points[5]], [points[3], points[7], points[8], points[4]] );
      wr10: same_side( [points[5], points[6], points[7]], [points[1], points[2], points[3], points[4]] );
      wr11: same_side( [points[3], points[7], points[6]], [points[1], points[4], points[8], points[5]] );
      wr12: same_side( [points[3], points[7], points[8]], [points[1], points[5], points[6], points[2]] );
      wr13: ( points[1].dim = 3 );
  END_ENTITY; -- hexahedron_volume (line:17416 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eHEXAHEDRON_VOLUME : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _hexahedron_volume.self
    }
    public let partialEntity: _hexahedron_volume

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eVOLUME: eVOLUME 	// [3]
    public var super_eHEXAHEDRON_VOLUME: eHEXAHEDRON_VOLUME { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eHEXAHEDRON_VOLUME`` )
    public var POINTS: SDAI.LIST<eCARTESIAN_POINT>/*[8:8]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._points )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._points = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_hexahedron_volume.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eVOLUME.self) else { return nil }
      self.super_eVOLUME = super3

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
      result[prefix2 + " .WHERE_wr1"] = _hexahedron_volume.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _hexahedron_volume.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _hexahedron_volume.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _hexahedron_volume.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _hexahedron_volume.WHERE_wr5(SELF: instance)
      result[prefix2 + " .WHERE_wr6"] = _hexahedron_volume.WHERE_wr6(SELF: instance)
      result[prefix2 + " .WHERE_wr7"] = _hexahedron_volume.WHERE_wr7(SELF: instance)
      result[prefix2 + " .WHERE_wr8"] = _hexahedron_volume.WHERE_wr8(SELF: instance)
      result[prefix2 + " .WHERE_wr9"] = _hexahedron_volume.WHERE_wr9(SELF: instance)
      result[prefix2 + " .WHERE_wr10"] = _hexahedron_volume.WHERE_wr10(SELF: instance)
      result[prefix2 + " .WHERE_wr11"] = _hexahedron_volume.WHERE_wr11(SELF: instance)
      result[prefix2 + " .WHERE_wr12"] = _hexahedron_volume.WHERE_wr12(SELF: instance)
      result[prefix2 + " .WHERE_wr13"] = _hexahedron_volume.WHERE_wr13(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "HEXAHEDRON_VOLUME", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eVOLUME.self)
      entityDef.add(supertype: eHEXAHEDRON_VOLUME.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "POINTS", keyPath: \eHEXAHEDRON_VOLUME.POINTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eHEXAHEDRON_VOLUME.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eHEXAHEDRON_VOLUME.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
