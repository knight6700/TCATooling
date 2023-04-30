import SwiftUI
import HorizonKit
import ComposableArchitecture

struct ___FILEBASENAMEASIDENTIFIER___Feature: ReducerProtocol {
    struct State: Equatable {
        
    }
    
    enum Action: Equatable {
        
    }

    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        return .none
    }
}

struct ___FILEBASENAMEASIDENTIFIER___View: View {
    
    let store: StoreOf<___FILEBASENAMEASIDENTIFIER___Feature>
    
    var body: some View {
        WithViewStore(store) { viewStore in
            VStack {
                Text("Hello, World!")
            }
        }
    }
}

struct ___FILEBASENAMEASIDENTIFIER___View_Previews: PreviewProvider {
    static var store: StoreOf<___FILEBASENAMEASIDENTIFIER___Feature> {
        .init(
            initialState: .init(),
            reducer: ___FILEBASENAMEASIDENTIFIER___Feature()
        )
    }
    static var previews: some View {
        ___FILEBASENAMEASIDENTIFIER___View(store: store)
    }
}

#if DEBUG
struct ___FILEBASENAMEASIDENTIFIER___StateBuilder {

    init(builder: (inout ___FILEBASENAMEASIDENTIFIER___StateBuilder) -> Void = { _ in }) {
        builder(&self)
    }

    func build() -> ___FILEBASENAMEASIDENTIFIER___Feature.State {
        .init()
    }
}
#endif
