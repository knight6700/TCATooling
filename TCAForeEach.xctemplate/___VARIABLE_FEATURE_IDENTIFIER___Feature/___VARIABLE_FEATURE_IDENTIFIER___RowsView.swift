import SwiftUI
import ComposableArchitecture

@Reducer
public struct ___VARIABLE_FEATURE_IDENTIFIER___RowsFeature {
    @ObservableState
    public struct State: Equatable {
        var ___VARIABLE_VAR_FEATURE_IDENTIFIER___: IdentifiedArrayOf<___VARIABLE_FEATURE_IDENTIFIER___RowFeature.State> = []
    }
    
    public enum Action: Equatable {
        case ___VARIABLE_VAR_FEATURE_IDENTIFIER___(IdentifiedActionOf<___VARIABLE_FEATURE_IDENTIFIER___RowFeature>)
    }
    
    public var body: some ReducerOf<Self> {
        Reduce<State, Action> { state, action in
                .none
        }
        .forEach(
            \.___VARIABLE_VAR_FEATURE_IDENTIFIER___,
             action: \.___VARIABLE_VAR_FEATURE_IDENTIFIER___
        ) {
            ___VARIABLE_FEATURE_IDENTIFIER___RowFeature()
        }
    }
}
struct ___FILEBASENAME___: View {
    
    let store: StoreOf<___VARIABLE_FEATURE_IDENTIFIER___RowsFeature>
    
    var body: some View {
        ForEach(
            store.scope(
                state: \.___VARIABLE_VAR_FEATURE_IDENTIFIER___,
                action: \.___VARIABLE_VAR_FEATURE_IDENTIFIER___
            )
        ) { childStore in
            ___VARIABLE_FEATURE_IDENTIFIER___RowView(store: childStore)
        }
    }
}

#if DEBUG
#Preview {
    ___FILEBASENAME___(
        store: Store(
            initialState: ___VARIABLE_FEATURE_IDENTIFIER___RowsFeature.State(___VARIABLE_VAR_FEATURE_IDENTIFIER___: []),
            reducer: { ___VARIABLE_FEATURE_IDENTIFIER___RowsFeature() }
        )
    )
}
#endif
