/* file: presentation_set.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY presentation_set;
    INVERSE
      areas : SET [1 : ?] OF area_in_set FOR in_set -- defined in ENTITY: area_in_set;
  END_ENTITY; -- presentation_set (line:25706 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	presentation_set
    ATTR:  areas,	TYPE: SET [1 : ?] OF area_in_set -- INVERSE
      FOR in_set;


  SUB- ENTITY(2)	drawing_revision
    ATTR:  revision_identifier,	TYPE: identifier -- EXPLICIT

    ATTR:  drawing_identifier,	TYPE: drawing_definition -- EXPLICIT

    ATTR:  intended_scale,	TYPE: OPTIONAL text -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _presentation_set : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRESENTATION_SET.self
    }

    //ATTRIBUTES
    /// INVERSE AGGREGATE ATTRIBUTE
    /// observing _area_in_set ._in_set
    internal var _areas: SDAI.SET<eAREA_IN_SET> {
      return __areas.map{ $0.reference }
    }
    private var __areas = SDAI.SET<SDAI.UnownedWrap<eAREA_IN_SET>>(bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), 
      bound2: (nil as SDAI.INTEGER?), 
      SDAI.EMPLY_AGGREGATE) // unowned backing store
    /// INVERSE AGGREGATE ATTR SUPPORT(ADDER)
    internal func _areas__observeAddedReference(in complex: SDAI.ComplexEntity) {
      guard let newSource = complex.entityReference(eAREA_IN_SET.self) else { return }
      self.__areas.add(member: SDAI.UnownedWrap(newSource) )
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(REMOVER)
    internal func _areas__observeRemovedReference(in complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(eAREA_IN_SET.self) else { return }
      let success = self.__areas.remove(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute element")
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(LEAVING REFERENCE OWNER)
    internal func _areas__observe(leavingReferencerOwner complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(eAREA_IN_SET.self) else { return }
      let success = self.__areas.removeAll(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute elements")
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sSTYLE_CONTEXT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sPRESENTATION_REPRESENTATION_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sINVISIBILITY_CONTEXT.typeName)) // -> Self
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
  ENTITY presentation_set;
    INVERSE
      areas : SET [1 : ?] OF area_in_set FOR in_set -- defined in ENTITY: area_in_set;
  END_ENTITY; -- presentation_set (line:25706 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRESENTATION_SET : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _presentation_set.self
    }
    public let partialEntity: _presentation_set

    //MARK: SUPERTYPES
    public var super_ePRESENTATION_SET: ePRESENTATION_SET { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eDRAWING_REVISION: eDRAWING_REVISION? {	// [2]
      return self.complexEntity.entityReference(eDRAWING_REVISION.self)
    }


    //MARK: ATTRIBUTES
    /// __INVERSE__ attribute
    /// observing eAREA_IN_SET .IN_SET
    /// - origin: SELF( ``ePRESENTATION_SET`` )
    public var AREAS: SDAI.SET<eAREA_IN_SET>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._areas )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDRAWING_REVISION`` )
    public var INTENDED_SCALE: tTEXT?  {
      get {
        return sub_eDRAWING_REVISION?.partialEntity._intended_scale
      }
      set(newValue) {
        guard let partial = sub_eDRAWING_REVISION?.super_eDRAWING_REVISION.partialEntity else { return }
        partial._intended_scale = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDRAWING_REVISION`` )
    public var REVISION_IDENTIFIER: tIDENTIFIER?  {
      get {
        return sub_eDRAWING_REVISION?.partialEntity._revision_identifier
      }
      set(newValue) {
        guard let partial = sub_eDRAWING_REVISION?.super_eDRAWING_REVISION.partialEntity else { return }
        partial._revision_identifier = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDRAWING_REVISION`` )
    public var DRAWING_IDENTIFIER: eDRAWING_DEFINITION?  {
      get {
        return sub_eDRAWING_REVISION?.partialEntity._drawing_identifier
      }
      set(newValue) {
        guard let partial = sub_eDRAWING_REVISION?.super_eDRAWING_REVISION.partialEntity else { return }
        partial._drawing_identifier = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_presentation_set.self) else { return nil }
      self.partialEntity = partial

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }

    //SIMPLE ENTITY REFERENCE
    public convenience init?(_ partial:_presentation_set) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRESENTATION_SET", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRESENTATION_SET.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "AREAS", keyPath: \ePRESENTATION_SET.AREAS, 
        kind: .inverse, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INTENDED_SCALE", keyPath: \ePRESENTATION_SET.INTENDED_SCALE, 
        kind: .explicitOptional, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REVISION_IDENTIFIER", keyPath: \ePRESENTATION_SET.REVISION_IDENTIFIER, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DRAWING_IDENTIFIER", keyPath: \ePRESENTATION_SET.DRAWING_IDENTIFIER, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
