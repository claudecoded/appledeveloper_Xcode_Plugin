import Foundation

struct PluginCLI {
    static func main() {
        let arguments = CommandLine.arguments
        
        let inputPrompt = readStandardInput() ?? (arguments.count > 1 ? arguments : "")
        
        if inputPrompt.isEmpty {
            print("❌ Error: No command received. Usage: plugin 'command'")
            exit(1)
        }
        
        let output = processPrompt(inputPrompt.lowercased())
        print(output)
    }
    
    static func readStandardInput() -> String? {
        let inputData = FileHandle.standardInput.availableData
        guard let str = String(data: inputData, encoding: .utf8)?.trimmingCharacters(in: .whitespacesAndNewlines), !str.isEmpty else {
            return nil
        }
        return str
    }
    
    static func processPrompt(_ input: String) -> String {
        if input.contains("card") {
            return """
            import SwiftUI

            struct ComponentCardView: View {
                var body: some View {
                    VStack(alignment: .leading, spacing: 12) {
                        Image(systemName: "sparkles")
                            .font(.title)
                            .foregroundColor(.blue)
                        Text("Generated Component")
                            .font(.headline)
                        Text("Automatically created for Apple platforms.")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(16)
                }
            }
            """
        } else if input.contains("list") {
            return """
            import SwiftUI

            struct AutomatedListView: View {
                let items = ["Element A", "Element B", "Element C"]
                
                var body: some View {
                    List(items, id: \\.self) { item in
                        HStack {
                            Image(systemName: "chevron.right.circle.fill")
                                .foregroundColor(.blue)
                            Text(item)
                        }
                    }
                }
            }
            """
        }
        
        return "// 🧠 [Plugin] Prompt not recognized. Try using 'card' or 'list'."
    }
}

PluginCLI.main()
c
