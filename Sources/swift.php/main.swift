import Foundation
import SwiftSyntax

func pl(_ args:  Any...) {
  Swift.print(args.map { String(describing: $0) }.joined(separator: " "))
}

func p(_ args:  Any...) {
  Swift.print(args.map { String(describing: $0) }.joined(separator: " "), terminator: "")
}

protocol Generatable {
  func generate()
}

func visit(node: Syntax) {
  if let g: Generatable = node as? Generatable {
    g.generate()
  } else {
    visitChildren(of: node)
  }
}

func visitChildren(of node: Syntax) {
  for child in node.children {
    visit(node: child)
  }
}

func debug(node: Syntax) {
  pl(node, type(of: node))
}

extension AccessLevelModifierSyntax {
  func generate() {
  }
}
extension AccessorBlockSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AccessorDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AccessorListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AccessorParameterSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AccessPathComponentSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AccessPathSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ArrayElementListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ArrayExprSyntax: Generatable {
  func generate() {
    p("array(")
    var first = true
    for elem in self.elements {
      if !first {
        p(", ")
      }
      first = false
      visit(node: elem)
    }
    p(")")
  }
}
extension ArrayTypeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ArrowExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AsExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AssignmentExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AssociatedtypeDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AsTypePatternSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AttributedTypeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AttributeListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AttributeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AvailabilityArgumentSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AvailabilityConditionSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AvailabilityLabeledArgumentSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AvailabilitySpecListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension AvailabilityVersionRestrictionSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension BinaryOperatorExprSyntax: Generatable {
  func generate() {
    var first = true
    for child in children {
      visit(node: child)
      if first {
        first = false
        p(self.operatorToken)
      }
    }
  }
}
extension BooleanLiteralExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension BreakStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension CaseItemListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension CaseItemSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension CatchClauseListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension CatchClauseSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ClassDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ClassRestrictionTypeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ClosureCaptureItemListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ClosureCaptureItemSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ClosureCaptureSignatureSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ClosureExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ClosureParamListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ClosureParamSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ClosureSignatureSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension CodeBlockItemListSyntax: Generatable {
  func generate() {
    visitChildren(of: self)
  }
}
extension CodeBlockItemSyntax: Generatable {
  func generate() {
    visitChildren(of: self)
    pl(";")
  }
}
extension CodeBlockSyntax: Generatable {
  func generate() {
    p("{")
    visitChildren(of: self)
    p("}")
  }
}
extension CompositionTypeElementListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension CompositionTypeElementSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension CompositionTypeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ConformanceRequirementSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ContinueStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension DeclarationStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension DeclModifierSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension DeclNameArgumentListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension DeclNameArgumentsSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension DeclNameArgumentSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension DeclNameSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension DeferStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension DeinitializerDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension DictionaryElementListSyntax: Generatable {
  func generate() {
    p("array(")
    var first = true
    for child in children {
      if first {
        first = false
      } else {
        p(", ")
      }
      visit(node: child)
    }
    p(")")
  }
}
extension DictionaryElementSyntax: Generatable {
  func generate() {
    visit(node: self.keyExpression)
    p(" => ")
    visit(node: self.valueExpression)
  }
}
extension DictionaryTypeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension DiscardAssignmentExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension DoStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension DotSelfExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension EditorPlaceholderExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ElseBlockSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ElseIfContinuationSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension EnumCaseDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension EnumCaseElementListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension EnumCaseElementSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension EnumCasePatternSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension EnumDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ExpressionPatternSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ExpressionSegmentSyntax: Generatable {
  func generate() {
    if let iden = expression as? IdentifierExprSyntax {
      visit(node: iden)
    } else {
      p("UNKNOWN")
    }
  }
}
extension ExpressionStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ExprListSyntax: Generatable {
  func generate() {
    visitChildren(of: self)
  }
}
extension ExtensionDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension FallthroughStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension FloatLiteralExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ForcedValueExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ForInStmtSyntax: Generatable {
  func generate() {
    p("foreach (")
    visit(node: self.sequenceExpr)
    p("as ")
    if let iden = self.pattern as? IdentifierPatternSyntax {
      visit(node: iden)
    } else if let tuple = self.pattern as? TuplePatternSyntax {
      var first = true
      for elem in tuple.elements {
        if first {
          first = false
        } else {
          p(" => ")
        }
        p("$")
        p(elem.pattern)
      }
    }
    p(")")
    visit(node: self.body)
  }
}
extension FunctionCallArgumentListSyntax: Generatable {
  func generate() {
    p("(")
    var isFirst = true
    for child in children {
      if isFirst {
        isFirst = false
      } else {
        p(", ")
      }
      visit(node: child)
    }
    p(")")
  }
}
extension FunctionCallExprSyntax: Generatable {
  func generate() {
    if let iden = self.calledExpression as? IdentifierExprSyntax {
      p(iden.identifier)
    } else if let receiver = self.calledExpression as? MemberAccessExprSyntax {
      visit(node: receiver)
    } else {
      p("(")
      visit(node: self.calledExpression)
      p(")")
    }
    visit(node: self.argumentList)
  }
}
extension FunctionDeclSyntax: Generatable {
  func generate() {
    p("function ")
    p(self.identifier)
    visit(node: self.signature)
    if let body = self.body {
      visit(node: body)
    } else {
      p("UNKNOWN")
    }
  }
}
extension FunctionParameterListSyntax: Generatable {
  func generate() {
    p("(")
    var isFirst = true
    for child in children {
      if isFirst {
        isFirst = false
      } else {
        p(", ")
      }
      if let parameter = child as? FunctionParameterSyntax {
        p("$")
        if let first = parameter.firstName {
          p(first)
        } else if let second = parameter.secondName {
          p(second)
        } else {
          p("UNKNOWN")
        }
      }
    }
    p(")")

  }
}
// extension FunctionParameterSyntax: Generatable {
//   func generate() {
//     debug(node: self)
//   }
// }
// extension FunctionSignatureSyntax: Generatable {
//   func generate() {
//     visitChildren(of: self)
//   }
// }
extension FunctionTypeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension GenericArgumentClauseSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension GenericArgumentListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension GenericArgumentSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension GenericParameterClauseSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension GenericParameterListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension GenericParameterSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension GenericRequirementListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension GenericWhereClauseSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension GuardStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension IdentifierExprSyntax: Generatable {
  func generate() {
    p("$")
    p(self.identifier)
  }
}
extension IdentifierListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension IdentifierPatternSyntax: Generatable {
  func generate() {
    p("$")
    p(self.identifier)
  }
}
extension IfConfigClauseListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension IfConfigClauseSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension IfConfigDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension IfStmtSyntax: Generatable {
  func generate() {
    p("if (")
    visit(node: self.conditions)
    p(") ")
    visit(node: self.body)
    if let elseBlock = self.elseBody {
      p(" else ")
      visit(node: elseBlock)
    }
  }
}
extension ImplementsAttributeArgumentsSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ImplicitlyUnwrappedOptionalTypeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ImplicitMemberExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ImportDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension InheritedTypeListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension InheritedTypeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension InitializerClauseSyntax: Generatable {
  func generate() {
    visit(node: self.value)
  }
}
extension InitializerDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension InOutExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension IntegerLiteralExprSyntax: Generatable {
  func generate() {
    p(self.digits)
  }
}
extension IsExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension IsTypePatternSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension KeyPathBaseExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension KeyPathExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension LabeledSpecializeEntrySyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension MatchingPatternConditionSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension MemberAccessExprSyntax: Generatable {
  func generate() {
    if let receiver = self.base {
      visit(node: receiver)
    } else {
      p("UNKNOWN")
    }
    p(".")
    p(self.name)
  }
}
extension MemberDeclBlockSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension MemberDeclListItemSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension MemberDeclListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension MemberTypeIdentifierSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension MetatypeTypeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ModifierListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension NamedAttributeStringArgumentSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension NilLiteralExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension NonEmptyTokenListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ObjcKeyPathExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ObjcNamePieceSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ObjcNameSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ObjcSelectorExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ObjCSelectorPieceSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ObjCSelectorSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ObjectLiteralExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension OperatorDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension OperatorPrecedenceAndTypesSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension OptionalBindingConditionSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension OptionalChainingExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension OptionalPatternSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension OptionalTypeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PatternBindingListSyntax: Generatable {
  func generate() {
    visitChildren(of: self)
  }
}
extension PatternBindingSyntax: Generatable {
  func generate() {
    visit(node: self.pattern)
    p("= ")
    if let value = self.initializer {
      visit(node: value)
      pl(";")
    } else {
      p("UNKNOWN")
    }
  }
}
extension PostfixUnaryExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PoundAssertStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PoundColumnExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PoundDsohandleExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PoundErrorDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PoundFileExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PoundFunctionExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PoundLineExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PoundSourceLocationArgsSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PoundSourceLocationSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PoundWarningDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PrecedenceGroupAssignmentSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PrecedenceGroupAssociativitySyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PrecedenceGroupAttributeListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PrecedenceGroupDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PrecedenceGroupNameElementSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PrecedenceGroupNameListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PrecedenceGroupRelationSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension PrefixOperatorExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ProtocolDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension RepeatWhileStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ReturnClauseSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ReturnStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SameTypeRequirementSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SequenceExprSyntax: Generatable {
  func generate() {
    visitChildren(of: self)
  }
}
extension SimpleTypeIdentifierSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SourceFileSyntax: Generatable {
  func generate() {
    pl("<?php")
    visitChildren(of: self)
  }
}
extension SpecializeAttributeSpecListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SpecializeExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension StringInterpolationExprSyntax: Generatable {
  func generate() {
    p("\"")
    visitChildren(of: self)
    p("\"")
  }
}
extension StringLiteralExprSyntax: Generatable {
  func generate() {
    p(self)
  }
}
extension StringSegmentSyntax: Generatable {
  func generate() {
    p(self)
  }
}
extension StructDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SubscriptDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SubscriptExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SuperRefExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SwitchCaseLabelSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SwitchCaseListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SwitchCaseSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SwitchDefaultLabelSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SwitchStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension SymbolicReferenceExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TernaryExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ThrowStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TokenListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
// extension TokenSyntax: Generatable {
//   func generate() {
//     debug(node: self)
//   }
// }
extension TryExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TupleElementListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TupleElementSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TupleExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TuplePatternElementListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TuplePatternElementSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TuplePatternSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TupleTypeElementListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TupleTypeElementSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TupleTypeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TypealiasDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TypeAnnotationSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TypeExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TypeInheritanceClauseSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension TypeInitializerClauseSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension UnknownDeclSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension UnknownExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension UnknownPatternSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension UnknownStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension UnknownTypeSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension UnresolvedPatternExprSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension ValueBindingPatternSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension VariableDeclSyntax: Generatable {
  func generate() {
    visitChildren(of: self)
  }
}
extension VersionTupleSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension WhereClauseSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension WhileStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension WildcardPatternSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension YieldListSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}
extension YieldStmtSyntax: Generatable {
  func generate() {
    debug(node: self)
  }
}

let currentFile = URL(fileURLWithPath: CommandLine.arguments[1])
let fileContents = try String(contentsOf: currentFile)
let parsed = try SyntaxTreeParser.parse(currentFile)
visit(node: parsed.root)
