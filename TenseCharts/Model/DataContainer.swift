//
//  DataContainer.swift
//  TenseCharts
//
//  Created by Apple Mac Air on 10.09.2024.
//

import SwiftData

@MainActor
class DataContainer {
    
    static func container(inMemory: Bool = false) -> ModelContainer {
        do {
            let config = ModelConfiguration(isStoredInMemoryOnly: inMemory)
            let container = try ModelContainer(for: ChartsTheme.self, configurations: config)
            
            var itemFetchDescriptor = FetchDescriptor<ChartsTheme>()
            itemFetchDescriptor.fetchLimit = 1
            
            guard try container.mainContext.fetch(itemFetchDescriptor).count == 0 else {
                return container
            }
            
            for theme in PostData.chartsTheme {
                theme.post = PostData.data[theme.id]
                container.mainContext.insert(theme)
            }
            return container
        } catch {
            fatalError("Failed to create SwiftData container")
        }
    }
    
    static var preview: [ChartsTheme] {
        do {
            let container = DataContainer.container(inMemory: true)
            let fetchDescriptor = FetchDescriptor<ChartsTheme>()
            return try container.mainContext.fetch(fetchDescriptor)
        } catch {
            fatalError("Failed to fetch data from data container")
        }
    }
    
    static var previewTheme: ChartsTheme {
            return preview[0]
    }
}
