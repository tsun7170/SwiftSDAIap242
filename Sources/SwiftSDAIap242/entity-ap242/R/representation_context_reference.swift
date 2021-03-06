/* file: representation_context_reference.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY representation_context_reference;
      context_identifier  : identifier;
    INVERSE
      representations_in_context : SET [1 : ?] OF representation_reference FOR context_of_items -- defined in ENTITY: representation_reference;
  END_ENTITY; -- representation_context_reference (line:27477 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	representation_context_reference
    ATTR:  context_identifier,	TYPE: identifier -- EXPLICIT

    ATTR:  representations_in_context,	TYPE: SET [1 : ?] OF representation_reference -- INVERSE
      FOR context_of_items;


*/


//MARK: - Partial Entity
  public final class _representation_context_reference : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eREPRESENTATION_CONTEXT_REFERENCE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _context_identifier: tIDENTIFIER // PLAIN EXPLICIT ATTRIBUTE

    /// INVERSE AGGREGATE ATTRIBUTE
    /// observing _representation_reference ._context_of_items
    internal var _representations_in_context: SDAI.SET<eREPRESENTATION_REFERENCE> {
      return __representations_in_context.map{ $0.reference }
    }
    private var __representations_in_context = SDAI.SET<SDAI.UnownedWrap<eREPRESENTATION_REFERENCE>>(
      bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as SDAI.INTEGER?), 
      SDAI.EMPLY_AGGREGATE) // unowned backing store
    /// INVERSE AGGREGATE ATTR SUPPORT(ADDER)
    internal func _representations_in_context__observeAddedReference(in complex: SDAI.ComplexEntity) {
      guard let newSource = complex.entityReference(eREPRESENTATION_REFERENCE.self) else { return }
      self.__representations_in_context.add(member: SDAI.UnownedWrap(newSource) )
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(REMOVER)
    internal func _representations_in_context__observeRemovedReference(in complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(eREPRESENTATION_REFERENCE.self) else { return }
      let success = self.__representations_in_context.remove(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute element")
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(LEAVING REFERENCE OWNER)
    internal func _representations_in_context__observe(leavingReferencerOwner complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(eREPRESENTATION_REFERENCE.self) else { return }
      let success = self.__representations_in_context.removeAll(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute elements")
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._context_identifier.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._context_identifier.value.isValueEqualOptionally(to: rhs._context_identifier.value, visited: &comppairs)	{
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
      if let comp = self._context_identifier.value.isValueEqualOptionally(to: rhs._context_identifier.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(CONTEXT_IDENTIFIER: tIDENTIFIER) {
      self._context_identifier = CONTEXT_IDENTIFIER
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tIDENTIFIER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( CONTEXT_IDENTIFIER: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY representation_context_reference;
      context_identifier  : identifier;
    INVERSE
      representations_in_context : SET [1 : ?] OF representation_reference FOR context_of_items -- defined in ENTITY: representation_reference;
  END_ENTITY; -- representation_context_reference (line:27477 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eREPRESENTATION_CONTEXT_REFERENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _representation_context_reference.self
    }
    public let partialEntity: _representation_context_reference

    //MARK: SUPERTYPES
    public var super_eREPRESENTATION_CONTEXT_REFERENCE: eREPRESENTATION_CONTEXT_REFERENCE { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPRESENTATION_CONTEXT_REFERENCE`` )
    public var CONTEXT_IDENTIFIER: tIDENTIFIER {
      get {
        return SDAI.UNWRAP( self.partialEntity._context_identifier )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._context_identifier = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eREPRESENTATION_REFERENCE .CONTEXT_OF_ITEMS
    /// - origin: SELF( ``eREPRESENTATION_CONTEXT_REFERENCE`` )
    public var REPRESENTATIONS_IN_CONTEXT: SDAI.SET<eREPRESENTATION_REFERENCE>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._representations_in_context )
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_representation_context_reference.self) else { return nil }
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
    public convenience init?(_ partial:_representation_context_reference) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "REPRESENTATION_CONTEXT_REFERENCE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_CONTEXT_REFERENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CONTEXT_IDENTIFIER", keyPath: \eREPRESENTATION_CONTEXT_REFERENCE.CONTEXT_IDENTIFIER, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REPRESENTATIONS_IN_CONTEXT", keyPath: \eREPRESENTATION_CONTEXT_REFERENCE.REPRESENTATIONS_IN_CONTEXT, 
        kind: .inverse, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
