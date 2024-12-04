import SwiftUI
import ComposableArchitecture

@Reducer
public struct ___VARIABLE_FEATURE_IDENTIFIER___RowFeature {
    @ObservableState
    public struct State: Equatable, Identifiable {
        public var id: Int
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
struct ___FILEBASENAME___: View {
    
    let store: StoreOf<___VARIABLE_FEATURE_IDENTIFIER___RowFeature>
    
    var body: some View {
        VStack {
            Text("Hello, World!")
        }
    }
}

#if DEBUG
#Preview {
    ___FILEBASENAME___(
        store: Store(
            initialState: ___VARIABLE_FEATURE_IDENTIFIER___RowFeature.State(id: .zero),
            reducer: { ___VARIABLE_FEATURE_IDENTIFIER___RowFeature() }
        )
    )
}
#endif
