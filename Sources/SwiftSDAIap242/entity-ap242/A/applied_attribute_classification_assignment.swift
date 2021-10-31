/* file: applied_attribute_classification_assignment.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY applied_attribute_classification_assignment
    SUBTYPE OF ( attribute_classification_assignment );
      SELF\attribute_classification_assignment.assigned_class : class;
      items                           : SET [1 : ?] OF attribute_classification_item;
  END_ENTITY; -- applied_attribute_classification_assignment (line:7169 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	attribute_classification_assignment
    ATTR:  assigned_class,	TYPE: group -- EXPLICIT
      -- possibly overriden by
      *** ENTITY: applied_attribute_classification_assignment,	TYPE: class
          ENTITY: attribute_language_assignment,	TYPE: language

    ATTR:  attribute_name,	TYPE: label -- EXPLICIT

    ATTR:  role,	TYPE: classification_role -- EXPLICIT


  ENTITY(SELF)	applied_attribute_classification_assignment
    REDCR: assigned_class,	TYPE: class -- EXPLICIT
      -- OVERRIDING ENTITY: attribute_classification_assignment

    ATTR:  items,	TYPE: SET [1 : ?] OF attribute_classification_item -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _applied_attribute_classification_assignment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eAPPLIED_ATTRIBUTE_CLASSIFICATION_ASSIGNMENT.self
    }

    //ATTRIBUTES
    /* override var _assigned_class: eCLASS	//EXPLICIT REDEFINITION(eATTRIBUTE_CLASSIFICATION_ASSIGNMENT) */

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _items: SDAI.SET<sATTRIBUTE_CLASSIFICATION_ITEM>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
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
    public init(ITEMS: SDAI.SET<sATTRIBUTE_CLASSIFICATION_ITEM>/*[1:nil]*/ ) {
      self._items = ITEMS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sATTRIBUTE_CLASSIFICATION_ITEM>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ITEMS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY applied_attribute_classification_assignment
    SUBTYPE OF ( attribute_classification_assignment );
      SELF\attribute_classification_assignment.assigned_class : class;
      items                           : SET [1 : ?] OF attribute_classification_item;
  END_ENTITY; -- applied_attribute_classification_assignment (line:7169 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eAPPLIED_ATTRIBUTE_CLASSIFICATION_ASSIGNMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _applied_attribute_classification_assignment.self
    }
    public let partialEntity: _applied_attribute_classification_assignment

    //MARK: SUPERTYPES
    public let super_eATTRIBUTE_CLASSIFICATION_ASSIGNMENT: eATTRIBUTE_CLASSIFICATION_ASSIGNMENT 	// [1]
    public var super_eAPPLIED_ATTRIBUTE_CLASSIFICATION_ASSIGNMENT: eAPPLIED_ATTRIBUTE_CLASSIFICATION_ASSIGNMENT { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eATTRIBUTE_CLASSIFICATION_ASSIGNMENT`` )
    public var ROLE: eCLASSIFICATION_ROLE {
      get {
        return SDAI.UNWRAP( super_eATTRIBUTE_CLASSIFICATION_ASSIGNMENT.partialEntity._role )
      }
      set(newValue) {
        let partial = super_eATTRIBUTE_CLASSIFICATION_ASSIGNMENT.partialEntity
        partial._role = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAPPLIED_ATTRIBUTE_CLASSIFICATION_ASSIGNMENT`` )
    public var ITEMS: SDAI.SET<sATTRIBUTE_CLASSIFICATION_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._items )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eATTRIBUTE_CLASSIFICATION_ASSIGNMENT`` )
    public var ATTRIBUTE_NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eATTRIBUTE_CLASSIFICATION_ASSIGNMENT.partialEntity._attribute_name )
      }
      set(newValue) {
        let partial = super_eATTRIBUTE_CLASSIFICATION_ASSIGNMENT.partialEntity
        partial._attribute_name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eAPPLIED_ATTRIBUTE_CLASSIFICATION_ASSIGNMENT`` )
    public var ASSIGNED_CLASS: eCLASS {
      get {
        return SDAI.UNWRAP( eCLASS( super_eATTRIBUTE_CLASSIFICATION_ASSIGNMENT.partialEntity
          ._assigned_class ) )
      }
      set(newValue) {
        let partial = super_eATTRIBUTE_CLASSIFICATION_ASSIGNMENT.partialEntity
        partial._assigned_class = SDAI.UNWRAP(
          eGROUP(newValue))
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_applied_attribute_classification_assignment.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eATTRIBUTE_CLASSIFICATION_ASSIGNMENT.self) else { return nil }
      self.super_eATTRIBUTE_CLASSIFICATION_ASSIGNMENT = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "APPLIED_ATTRIBUTE_CLASSIFICATION_ASSIGNMENT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eATTRIBUTE_CLASSIFICATION_ASSIGNMENT.self)
      entityDef.add(supertype: eAPPLIED_ATTRIBUTE_CLASSIFICATION_ASSIGNMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ROLE", keyPath: \eAPPLIED_ATTRIBUTE_CLASSIFICATION_ASSIGNMENT.ROLE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEMS", keyPath: \eAPPLIED_ATTRIBUTE_CLASSIFICATION_ASSIGNMENT.ITEMS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ATTRIBUTE_NAME", keyPath: \eAPPLIED_ATTRIBUTE_CLASSIFICATION_ASSIGNMENT.ATTRIBUTE_NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ASSIGNED_CLASS", keyPath: \eAPPLIED_ATTRIBUTE_CLASSIFICATION_ASSIGNMENT.ASSIGNED_CLASS, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
