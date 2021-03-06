/* file: cc_design_date_and_time_assignment.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY cc_design_date_and_time_assignment
    SUBTYPE OF ( date_and_time_assignment );
      items  : SET [1 : ?] OF date_time_item;
  END_ENTITY; -- cc_design_date_and_time_assignment (line:8917 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	date_and_time_assignment
    ATTR:  assigned_date_and_time,	TYPE: date_and_time -- EXPLICIT

    ATTR:  role,	TYPE: date_time_role -- EXPLICIT


  ENTITY(SELF)	cc_design_date_and_time_assignment
    ATTR:  items,	TYPE: SET [1 : ?] OF date_time_item -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _cc_design_date_and_time_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCC_DESIGN_DATE_AND_TIME_ASSIGNMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _items: SDAI.SET<sDATE_TIME_ITEM>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._items.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._items.value.isValueEqualOptionally(to: rhs._items.value, visited: &comppairs)	{
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
      if let comp = self._items.value.isValueEqualOptionally(to: rhs._items.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ITEMS: SDAI.SET<sDATE_TIME_ITEM>/*[1:nil]*/ ) {
      self._items = ITEMS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<sDATE_TIME_ITEM>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ITEMS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY cc_design_date_and_time_assignment
    SUBTYPE OF ( date_and_time_assignment );
      items  : SET [1 : ?] OF date_time_item;
  END_ENTITY; -- cc_design_date_and_time_assignment (line:8917 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCC_DESIGN_DATE_AND_TIME_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _cc_design_date_and_time_assignment.self
    }
    public let partialEntity: _cc_design_date_and_time_assignment

    //MARK: SUPERTYPES
    public let super_eDATE_AND_TIME_ASSIGNMENT: eDATE_AND_TIME_ASSIGNMENT 	// [1]
    public var super_eCC_DESIGN_DATE_AND_TIME_ASSIGNMENT: eCC_DESIGN_DATE_AND_TIME_ASSIGNMENT { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATE_AND_TIME_ASSIGNMENT`` )
    public var ROLE: eDATE_TIME_ROLE {
      get {
        return SDAI.UNWRAP( super_eDATE_AND_TIME_ASSIGNMENT.partialEntity._role )
      }
      set(newValue) {
        let partial = super_eDATE_AND_TIME_ASSIGNMENT.partialEntity
        partial._role = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCC_DESIGN_DATE_AND_TIME_ASSIGNMENT`` )
    public var ITEMS: SDAI.SET<sDATE_TIME_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._items )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATE_AND_TIME_ASSIGNMENT`` )
    public var ASSIGNED_DATE_AND_TIME: eDATE_AND_TIME {
      get {
        return SDAI.UNWRAP( super_eDATE_AND_TIME_ASSIGNMENT.partialEntity._assigned_date_and_time )
      }
      set(newValue) {
        let partial = super_eDATE_AND_TIME_ASSIGNMENT.partialEntity
        partial._assigned_date_and_time = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_cc_design_date_and_time_assignment.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eDATE_AND_TIME_ASSIGNMENT.self) else { return nil }
      self.super_eDATE_AND_TIME_ASSIGNMENT = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CC_DESIGN_DATE_AND_TIME_ASSIGNMENT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDATE_AND_TIME_ASSIGNMENT.self)
      entityDef.add(supertype: eCC_DESIGN_DATE_AND_TIME_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ROLE", keyPath: \eCC_DESIGN_DATE_AND_TIME_ASSIGNMENT.ROLE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eCC_DESIGN_DATE_AND_TIME_ASSIGNMENT.ITEMS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ASSIGNED_DATE_AND_TIME", keyPath: \eCC_DESIGN_DATE_AND_TIME_ASSIGNMENT.ASSIGNED_DATE_AND_TIME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
