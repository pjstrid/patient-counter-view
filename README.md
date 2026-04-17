# Kodkliniken - Jonathan Strid

## 🤕 Patient jag ansvarade för
- Patient 4

## 🩺 Symptom
- Vad fungerade inte när du fick koden?
- Allt nollställs när ContentView ritas om

## 🧠 Diagnos
- Vilket arkitektoniskt fel orsakade problemet?
- När ContentView ritas om initierar den en ny viewModel varje gång och datan nollställs.

## 🩹 Behandling
- Exakt vad ändrade du för att lösa det?
- Ankrar variabeln viewModel: CounterViewModel() med "@State private" när den skapas.

## ✅ Verifiering
- Appen körs nu utan buggar och all data sparas vid omritning av ContentView

## 💡 Lärdomar
- Vikten av att använda @State på en ViewModel för att den inte ska initieras om på nytt varje gång en view ritas om
