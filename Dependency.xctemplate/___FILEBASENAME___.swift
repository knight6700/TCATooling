import Dependencies

struct ___FILEBASENAMEASIDENTIFIER___ {
}

extension ___FILEBASENAMEASIDENTIFIER___: DependencyKey {
    static var liveValue: Self {
        .init()
    }
}

extension ___FILEBASENAMEASIDENTIFIER___: TestDependencyKey {
    static var testValue: Self {
        .init()
    }
    
    static var previewValue: Self {
        .init()
    }
}


extension DependencyValues {
    var <#name#>: ___FILEBASENAMEASIDENTIFIER___ {
    get { self[___FILEBASENAMEASIDENTIFIER___.self] }
    set { self[___FILEBASENAMEASIDENTIFIER___.self] = newValue }
  }
}
