import ComposableArchitecture
import SwiftUI

@Reducer
public struct ___VARIABLE_FEATURE_IDENTIFIER___Feature {
    public init() {}
    @Reducer
    public enum Path {
        case child
        var id: StackElementID {
            switch self {
            case .child:
                StackElementID(integerLiteral: 1)
            }
        }
    }
    @ObservableState
    public struct State {
        var path = StackState<Path.State>()
        public init(
            path: StackState<Path.State> = StackState<Path.State>()
        ) {
            self.path = path
        }
    }

    public enum Action {
        case goBackToScreen(id: StackElementID)
        case path(StackActionOf<Path>)
        case popToRoot
        case root
        case delegate(Delegate)
    }
    public enum Delegate {
        case showHomeScreen
    }
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .goBackToScreen:
                return .none
            case let .path(action):
                switch action {
                case .element(id: _, action: .child):
                    state.path.append(.child)
                    return .none
                default:
                    return .none
                }
            case .popToRoot:
                return .none
            case .root:
                state.path.append(.child)
                return .none
            case .root:
                return .none
            case .delegate:
                return .none
            }
        }
        .forEach(\.path, action: \.path)
    }
}
public struct AuthnticationRouter: View {
    @Bindable var store: StoreOf<___VARIABLE_FEATURE_IDENTIFIER___Feature>
    public init(store: StoreOf<___VARIABLE_FEATURE_IDENTIFIER___Feature>) {
        self.store = store
    }
    public var body: some View {
        NavigationStack(path: $store.scope(state: \.path, action: \.path)) {
            Text("RootView")
        } destination: { store in
            switch store.case {
            case .child:
                Text("ChildViews")
            }
        }
    }
}
