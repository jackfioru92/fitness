# 🏋️ Fitness App

Una moderna applicazione mobile di fitness sviluppata in Flutter, progettata per guidare gli utenti nel loro percorso di allenamento e benessere attraverso piani personalizzati, consigli nutrizionali e una vasta libreria di esercizi.

## 📱 Caratteristiche Principali

### 🎯 Onboarding Personalizzato
L'app raccoglie informazioni dettagliate sull'utente per creare un'esperienza completamente personalizzata:
- **Dati personali**: Nome, età, altezza e peso
- **Obiettivi fitness**: Definizione degli obiettivi personali
- **Livello di attività**: Valutazione del livello di attività fisica attuale
- **Condizioni mediche**: Considerazione di eventuali condizioni mediche particolari
- **Genere**: Personalizzazione in base al genere

### 🏠 Sezione Workouts (Home)
La schermata principale offre un'esperienza completa di allenamento:
- **Piano di allenamento raccomandato**: Suggerimenti personalizzati basati sul profilo utente
- **Essentials**: Accesso rapido agli allenamenti fondamentali (Strength, Cardio, Yoga, ecc.)
- **New Reels**: Video brevi e coinvolgenti con esercizi e consigli
- **Workout Collection**: Collezioni tematiche di allenamenti
  - Full Body Workout
  - Upper Body
  - Lower Body
  - Ab Workout
  - E molte altre categorie

#### Funzionalità Workout
- **Piani settimanali**: Organizzazione degli allenamenti per tutta la settimana
- **Dettagli esercizi**: Descrizioni complete con overhead press e altri movimenti
- **Allenamenti specifici**: Full body, strength training e programmi mirati

### 📋 My Plan
Sezione dedicata alla pianificazione personale:
- **Piani salvati**: Accesso rapido ai propri programmi di allenamento
- **Livelli di difficoltà**: Dal principiante (Learner) ai livelli avanzati
- **Tracciamento progressi**: Monitoraggio del percorso fitness

### 🥗 Diet Tips
Sistema completo di gestione nutrizionale:
- **Tracciamento calorie**: Obiettivo calorico giornaliero (es. 1,500 Cal)
- **Gestione pasti**: Tracciamento di tutti i pasti della giornata
  - Colazione
  - Spuntino mattutino
  - Pranzo
  - Spuntino pomeridiano
  - Cena
- **Consigli nutrizionali**: Tips giornalieri per una dieta equilibrata
- **Ricette**: Database di ricette salutari
- **Preferenze dietetiche**: 
  - Scelta del tipo di dieta
  - Gestione allergie e intolleranze alimentari
  - Cucine preferite
  - Opzioni vegetariane/vegane
- **Creazione pasti personalizzati**: Possibilità di creare e salvare i propri pasti
- **Insights**: Analisi nutrizionale dei progressi

### 👤 Profilo
Area personale completa con:
- **Modifica profilo**: Aggiornamento dei dati personali
- **Reminders**: Impostazione promemoria per allenamenti e pasti
- **FAQs**: Risposte alle domande più frequenti
- **Privacy Policy**: Informazioni sulla privacy e termini di servizio
- **Logout**: Disconnessione sicura dall'account

### ⭐ Funzionalità Aggiuntive
- **Sistema di preferiti**: Salva gli allenamenti e i pasti preferiti
- **Libreria workout**: Ricerca avanzata tra tutti gli esercizi disponibili
- **Notifiche**: Sistema di notifiche per promemoria e aggiornamenti
- **Supporto multilingua**: Selezione della lingua preferita
- **Drawer navigation**: Menu laterale per una navigazione rapida

## 🔐 Autenticazione

Sistema completo di autenticazione utente:
- **Registrazione**: Creazione nuovo account con email e password
- **Login**: Accesso con credenziali esistenti
- **Verifica OTP**: Sistema di verifica tramite codice OTP
- **Password dimenticata**: Recupero password tramite email
- **Reset password**: Procedura sicura per il reset della password

## 🎨 Design e UI/UX

### Caratteristiche Design
- **Dark theme**: Interfaccia elegante con tema scuro (colori principali: nero, blu accent)
- **Font personalizzati**: Utilizzo della famiglia Poppins con diversi pesi
- **Animazioni fluide**: Transizioni e animazioni per un'esperienza utente premium
- **Layout responsivo**: Adattamento perfetto a diverse dimensioni di schermo
- **Icone SVG**: Grafica vettoriale per una qualità visiva ottimale
- **Immagini ottimizzate**: Asset organizzati per categoria per prestazioni ottimali

### Pattern Architetturali
- **GetX**: State management reattivo con pattern Controller
- **Separation of Concerns**: Separazione tra UI, logica e dati
- **Widget riutilizzabili**: Componenti comuni per consistenza UI

## 🛠️ Tecnologie Utilizzate

### Framework e Linguaggi
- **Flutter**: Framework principale per lo sviluppo cross-platform
- **Dart**: Linguaggio di programmazione (SDK 2.17.1+)

### Dipendenze Principali
```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.5                    # State management e routing
  flutter_svg: ^2.0.7            # Supporto per SVG
  country_code_picker: ^3.0.0    # Selettore codice paese
  pinput: ^3.0.1                 # Input OTP/PIN
  numberpicker: ^2.1.1           # Selezione numeri
  flutter_toggle_tab: ^1.2.0     # Toggle buttons
  percent_indicator: ^4.2.2      # Indicatori percentuali
  flutter_calendar_week: ^3.0.2  # Calendario settimanale
  cupertino_icons: ^1.0.2        # Icone iOS
```

## 📁 Struttura del Progetto

```
lib/
├── main.dart                    # Entry point dell'applicazione
├── Constants/
│   ├── colors.dart             # Palette colori
│   └── images.dart             # Percorsi asset
├── Controller/
│   ├── auth_controller.dart
│   ├── bottom_navigation_controller.dart
│   ├── home_controller.dart
│   ├── myplan_controller.dart
│   ├── diet_tip_controller.dart
│   ├── favourite_controller.dart
│   └── profile_controller.dart
├── Screen/
│   ├── Welcome/               # Onboarding screens
│   ├── Auth/                  # Autenticazione
│   │   ├── fillDetails/      # Raccolta dati utente
│   │   ├── signin_screen.dart
│   │   ├── signup_screen.dart
│   │   └── ...
│   ├── BottomNavigation/      # Navigazione principale
│   ├── Home/                  # Workouts
│   ├── MyPlan/                # Piani personalizzati
│   ├── DietTips/              # Nutrizione
│   ├── Profile/               # Profilo utente
│   ├── Favourite/             # Preferiti
│   ├── WorkoutLibrary/        # Libreria esercizi
│   ├── Notification/          # Notifiche
│   ├── Language/              # Selezione lingua
│   ├── Setting/               # Impostazioni
│   ├── Faqs/                  # Domande frequenti
│   └── TermsCondition/        # Termini e condizioni
└── Widgets/
    ├── common_appbar.dart
    ├── common_button.dart
    ├── common_text_widget.dart
    ├── common_textfield.dart
    └── common_widgets.dart
```

## 🚀 Come Iniziare

### Prerequisiti
- Flutter SDK (2.17.1 o superiore)
- Dart SDK (incluso con Flutter)
- Android Studio / VS Code con plugin Flutter
- Xcode (per sviluppo iOS su macOS)

### Installazione

1. **Clona il repository**
```bash
git clone <repository-url>
cd fitness
```

2. **Installa le dipendenze**
```bash
flutter pub get
```

3. **Verifica la configurazione Flutter**
```bash
flutter doctor
```

4. **Esegui l'app**
```bash
# Per Android
flutter run

# Per iOS
flutter run -d ios

# Per una build di release
flutter build apk          # Android
flutter build ios          # iOS
```

### Asset
Assicurati che tutti gli asset siano presenti nelle seguenti cartelle:
- `assets/images/Welcome/`
- `assets/images/Auth/`
- `assets/images/Home/`
- `assets/images/MyPlan/`
- `assets/images/DietTips/`
- `assets/images/Profile/`
- `assets/images/Favourite/`
- `assets/images/WorkoutLibrary/`
- `assets/fonts/` (font Poppins)

## 📱 Piattaforme Supportate

- ✅ **Android** (5.0 Lollipop e superiori)
- ✅ **iOS** (11.0 e superiori)
- ⚠️ **Web** (supporto base)
- ⚠️ **Windows** (in sviluppo)

## 🎯 Funzionalità Future

Possibili miglioramenti futuri:
- [ ] Integrazione con wearable (Apple Watch, Fitbit)
- [ ] Social features (condivisione progressi, community)
- [ ] Video tutorial integrati per ogni esercizio
- [ ] AI-powered workout recommendations
- [ ] Integrazione con calendario per pianificazione avanzata
- [ ] Statistiche e grafici dettagliati
- [ ] Modalità offline completa
- [ ] Sincronizzazione multi-dispositivo

## 🔧 Configurazione

### Android
Il file `android/app/build.gradle` è configurato con:
- minSdkVersion: 21
- targetSdkVersion: 33
- compileSdkVersion: 33

### iOS
Configurazione in `ios/Runner/Info.plist` per:
- Permessi fotocamera (se necessari)
- Permessi notifiche
- Background modes (per tracking attività)

## 📄 Licenza

Progetto privato - Tutti i diritti riservati

## 👨‍💻 Sviluppatore

Sviluppato da **Giacomo Fiorucci**

---

## 🤝 Supporto

Per supporto o domande sul progetto:
- Contatta il cliente direttamente
- Documentazione tecnica disponibile nel codice sorgente

## 📝 Note di Versione

**Versione 1.0.0+1**
- Release iniziale
- Tutte le funzionalità core implementate
- UI/UX completa e testata
- Supporto multipiattaforma (Android/iOS)

---

*Questo progetto è stato sviluppato con ❤️ utilizzando Flutter*
