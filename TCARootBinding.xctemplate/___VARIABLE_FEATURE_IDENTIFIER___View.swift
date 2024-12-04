import SwiftUI
import ComposableArchitecture

@Reducer
public struct ___VARIABLE_FEATURE_IDENTIFIER___Feature {
    @ObservableState
    public struct State: Equatable {
        
    }
    
    public enum Action: BindableAction, Equatable {
        
    }
    
    public var body: some ReducerOf<Self> {
        BindingReducer()
        Reduce<State, Action>
        { state, action in
                .none
        }
    }
}
struct ___VARIABLE_FEATURE_IDENTIFIER___View: View {
    
   @Bindable let store: StoreOf<___VARIABLE_FEATURE_IDENTIFIER___Feature>
    
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
