import SwiftUI
import ComposableArchitecture

struct ___FILEBASENAMEASIDENTIFIER___Feature: ReducerProtocol {
    struct State: Equatable {
        
    }
    
    enum Action: Equatable {
        
    }
    
    var body: some ReducerProtocolOf<Self> {
        Reduce<State, Action> { state, action in
             .none
        }
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

#if DEBUG
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
#endif
