import SwiftUI
import ComposableArchitecture

@Reducer
public struct ___VARIABLE_FEATURE_IDENTIFIER___Feature {
    @ObservableState
    public struct State: Equatable {
        
    }
    
    public enum Action: Equatable {
        
    }
    
    public func reduce(
        into state: inout State,
        action: Action
    ) -> Effect<Action> {
        return .none
    }
}

struct ___VARIABLE_FEATURE_IDENTIFIER___View: View {
    
    let store: StoreOf<___VARIABLE_FEATURE_IDENTIFIER___Feature>
    
    var body: some View {
        VStack {
            Text("Hello, World!")
        }
    }
}

#if DEBUG
#Preview {
    ___VARIABLE_FEATURE_IDENTIFIER___View(
        store: Store(
            initialState: ___VARIABLE_FEATURE_IDENTIFIER___Feature.State(),
            reducer: { ___VARIABLE_FEATURE_IDENTIFIER___Feature() }
        )
    )
}
#endif
