grammarTest = require 'atom-grammar-test'

describe 'HDBDD grammar', ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage 'language-sap'
    runs ->
      grammar = atom.grammars.grammarForScopeName 'source.hdbdd'

  it 'parses the grammar', ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe 'source.hdbdd'
