/* file: context_dependent_invisibility.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY context_dependent_invisibility
    SUBTYPE OF ( invisibility );
      presentation_context  : invisibility_context;
  END_ENTITY; -- context_dependent_invisibility (line:10569 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	invisibility
    ATTR:  invisible_items,	TYPE: SET [1 : ?] OF invisible_item -- EXPLICIT


  ENTITY(SELF)	context_dependent_invisibility
    ATTR:  presentation_context,	TYPE: invisibility_context -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _context_dependent_invisibility : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCONTEXT_DEPENDENT_INVISIBILITY.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _presentation_context: sINVISIBILITY_CONTEXT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._presentation_context.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._presentation_context.value.isValueEqualOptionally(to: rhs._presentation_context.value, visited: &comppairs)	{
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
      if let comp = self._presentation_context.value.isValueEqualOptionally(to: rhs._presentation_context.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PRESENTATION_CONTEXT: sINVISIBILITY_CONTEXT) {
      self._presentation_context = PRESENTATION_CONTEXT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: sINVISIBILITY_CONTEXT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PRESENTATION_CONTEXT: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY context_dependent_invisibility
    SUBTYPE OF ( invisibility );
      presentation_context  : invisibility_context;
  END_ENTITY; -- context_dependent_invisibility (line:10569 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCONTEXT_DEPENDENT_INVISIBILITY : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _context_dependent_invisibility.self
    }
    public let partialEntity: _context_dependent_invisibility

    //MARK: SUPERTYPES
    public let super_eINVISIBILITY: eINVISIBILITY 	// [1]
    public var super_eCONTEXT_DEPENDENT_INVISIBILITY: eCONTEXT_DEPENDENT_INVISIBILITY { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eINVISIBILITY`` )
    public var INVISIBLE_ITEMS: SDAI.SET<sINVISIBLE_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eINVISIBILITY.partialEntity._invisible_items )
      }
      set(newValue) {
        let partial = super_eINVISIBILITY.partialEntity
        partial._invisible_items = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCONTEXT_DEPENDENT_INVISIBILITY`` )
    public var PRESENTATION_CONTEXT: sINVISIBILITY_CONTEXT {
      get {
        return SDAI.UNWRAP( self.partialEntity._presentation_context )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._presentation_context = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_context_dependent_invisibility.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eINVISIBILITY.self) else { return nil }
      self.super_eINVISIBILITY = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "CONTEXT_DEPENDENT_INVISIBILITY", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eINVISIBILITY.self)
      entityDef.add(supertype: eCONTEXT_DEPENDENT_INVISIBILITY.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INVISIBLE_ITEMS", keyPath: \eCONTEXT_DEPENDENT_INVISIBILITY.INVISIBLE_ITEMS, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PRESENTATION_CONTEXT", keyPath: \eCONTEXT_DEPENDENT_INVISIBILITY.PRESENTATION_CONTEXT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
