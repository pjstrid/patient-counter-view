//
//  ContentView.swift
//  PatientCounterView
//
//  Created by Jonathan Strid on 2026-04-17.
//

import SwiftUI
import Observation

@Observable
class CounterViewModel {
    var count: Int = 0
    var label: String = "Klick"

    func increment() {
        count += 1
    }
}

struct ContentView: View {
    var viewModel = CounterViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Räknare: \(viewModel.count)")
                    .font(.largeTitle)

                Button("Öka") {
                    viewModel.increment()
                }
                .buttonStyle(.borderedProminent)

                NavigationLink("Redigera label") {
                    EditLabelView(viewModel: viewModel)
                }
            }
            .navigationTitle(viewModel.label)
        }
    }
}

struct EditLabelView: View {
    @Bindable var viewModel: CounterViewModel

    var body: some View {
        Form {
            TextField("Label", text: $viewModel.label)
        }
    }
}

#Preview {
    ContentView()
}
