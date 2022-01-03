/* file: final_solution.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY final_solution
    SUBTYPE OF ( product_definition_formation );
      status  : STRING;
    INVERSE
      specification : SET [1 : ?] OF product_definition FOR formation -- defined in ENTITY: product_definition;
  END_ENTITY; -- final_solution (line:15619 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	product_definition_formation
    ATTR:  id,	TYPE: identifier -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  of_product,	TYPE: product -- EXPLICIT
      -- possibly overriden by
          ENTITY: collection_version,	TYPE: collection


  ENTITY(SELF)	final_solution
    ATTR:  status,	TYPE: STRING -- EXPLICIT

    ATTR:  specification,	TYPE: SET [1 : ?] OF product_definition -- INVERSE
      FOR formation;


*/


//MARK: - Partial Entity
  public final class _final_solution : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eFINAL_SOLUTION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _status: SDAI.STRING // PLAIN EXPLICIT ATTRIBUTE

    /// INVERSE AGGREGATE ATTRIBUTE
    /// observing _product_definition ._formation
    internal var _specification: SDAI.SET<ePRODUCT_DEFINITION> {
      return __specification.map{ $0.reference }
    }
    private var __specification = SDAI.SET<SDAI.UnownedWrap<ePRODUCT_DEFINITION>>(
      bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as SDAI.INTEGER?), 
      SDAI.EMPLY_AGGREGATE) // unowned backing store
    /// INVERSE AGGREGATE ATTR SUPPORT(ADDER)
    internal func _specification__observeAddedReference(in complex: SDAI.ComplexEntity) {
      guard let newSource = complex.entityReference(ePRODUCT_DEFINITION.self) else { return }
      self.__specification.add(member: SDAI.UnownedWrap(newSource) )
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(REMOVER)
    internal func _specification__observeRemovedReference(in complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(ePRODUCT_DEFINITION.self) else { return }
      let success = self.__specification.remove(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute element")
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(LEAVING REFERENCE OWNER)
    internal func _specification__observe(leavingReferencerOwner complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(ePRODUCT_DEFINITION.self) else { return }
      let success = self.__specification.removeAll(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute elements")
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sSTATE_OBSERVED_OF_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSTATE_TYPE_OF_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._status.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._status.value.isValueEqualOptionally(to: rhs._status.value, visited: &comppairs)	{
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
      if let comp = self._status.value.isValueEqualOptionally(to: rhs._status.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(STATUS: SDAI.STRING) {
      self._status = STATUS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.STRING.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( STATUS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY final_solution
    SUBTYPE OF ( product_definition_formation );
      status  : STRING;
    INVERSE
      specification : SET [1 : ?] OF product_definition FOR formation -- defined in ENTITY: product_definition;
  END_ENTITY; -- final_solution (line:15619 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eFINAL_SOLUTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _final_solution.self
    }
    public let partialEntity: _final_solution

    //MARK: SUPERTYPES
    public let super_ePRODUCT_DEFINITION_FORMATION: ePRODUCT_DEFINITION_FORMATION 	// [1]
    public var super_eFINAL_SOLUTION: eFINAL_SOLUTION { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_ePRODUCT_DEFINITION_FORMATION.partialEntity._description
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eFINAL_SOLUTION`` )
    public var STATUS: SDAI.STRING {
      get {
        return SDAI.UNWRAP( self.partialEntity._status )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._status = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing ePRODUCT_DEFINITION .FORMATION
    /// - origin: SELF( ``eFINAL_SOLUTION`` )
    public var SPECIFICATION: SDAI.SET<ePRODUCT_DEFINITION>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._specification )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var ID: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_FORMATION.partialEntity._id )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION.partialEntity
        partial._id = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRODUCT_DEFINITION_FORMATION`` )
    public var OF_PRODUCT: ePRODUCT {
      get {
        return SDAI.UNWRAP( super_ePRODUCT_DEFINITION_FORMATION.partialEntity._of_product )
      }
      set(newValue) {
        let partial = super_ePRODUCT_DEFINITION_FORMATION.partialEntity
        partial._of_product = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_final_solution.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRODUCT_DEFINITION_FORMATION.self) else { return nil }
      self.super_ePRODUCT_DEFINITION_FORMATION = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "FINAL_SOLUTION", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRODUCT_DEFINITION_FORMATION.self)
      entityDef.add(supertype: eFINAL_SOLUTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eFINAL_SOLUTION.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "STATUS", keyPath: \eFINAL_SOLUTION.STATUS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SPECIFICATION", keyPath: \eFINAL_SOLUTION.SPECIFICATION, 
        kind: .inverse, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eFINAL_SOLUTION.ID, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_PRODUCT", keyPath: \eFINAL_SOLUTION.OF_PRODUCT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
