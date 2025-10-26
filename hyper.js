module.exports = {
  config: {
    // Taille de la police
    fontSize: 13,
    // Police de caractères
    fontFamily: '"JetBrains Mono", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    // Poids de la police
    fontWeight: 'normal',
    fontWeightBold: 'bold',
    // Hauteur de ligne
    lineHeight: 1.5,
    // Espacement des lettres
    letterSpacing: 0,
    // Couleur du curseur
    cursorColor: '#F5E6D3',
    // Forme du curseur ('BEAM', 'UNDERLINE' ou 'BLOCK')
    cursorShape: 'UNDERLINE',
    // Couleur de l'accentuation (pour la sélection de texte)
    cursorAccentColor: '#2D2D2D',
    // Couleur du texte principal (crème)
    foregroundColor: '#F5E6D3',
    // Couleur de fond (gris foncé)
    backgroundColor: '#2D2D2D',
    // Couleur de la sélection
    selectionColor: 'rgba(165, 182, 195, 0.3)',
    // Couleur de la bordure
    borderColor: '#3D3D3D',
    showWindowControls: true,
    showHamburgerMenu: true,
    // Épaisseur de la bordure de la fenêtre CSS
    css: `
      .hyper_main {
        border: none !important;
      }
      .tabs_nav .tabs_list {
        border-bottom: none !important;
      }
    `,
    // Configuration des couleurs du terminal (palette pastel)
    colors: {
      black: '#3D3D3D',
      red: '#F4A5A5',           // Rouge pastel
      green: '#B4E4B4',         // Vert pastel
      yellow: '#F5E6A5',        // Jaune pastel
      blue: '#A5C9E4',          // Bleu pastel
      magenta: '#E4B4D4',       // Magenta pastel
      cyan: '#B4E4E4',          // Cyan pastel
      white: '#F5E6D3',         // Crème
      lightBlack: '#6D6D6D',
      lightRed: '#FFB8B8',
      lightGreen: '#C8F0C8',
      lightYellow: '#FFF0B8',
      lightBlue: '#B8DCFF',
      lightMagenta: '#FFC8E8',
      lightCyan: '#C8F0F0',
      lightWhite: '#FFFFFF'
    },
    // Shell par défaut (fish pour macOS)
    shell: '/opt/homebrew/bin/fish',
    // Arguments du shell
    shellArgs: ['--login'],
    // Variables d'environnement
    env: {},
    // Configuration de la cloche
    bell: 'SOUND',
    // Copier sur sélection
    copyOnSelect: true,
    // Activer le support de liens cliquables
    webLinksActivationKey: 'meta',
    // Padding
    padding: '12px 14px',
    
    // Configuration du sync
    syncSettings: {
      quiet: false,
      accelerators: {
        checkForUpdates: 'CmdOrCtrl+8'
      }
    }
    
  },  // <-- UNE SEULE virgule ici, et ça ferme config
  
  // Liste des plugins à charger
  plugins: [
    "hyper-sync-settings",
    "hyper-pane",
	"hyper-search",
	"hypercwd",
	"hyper-highlight-active-pane",
	"hyper-fading-scrollbar",
	"hyper-broadcast",
	"hyper-yes",
	"hyper-tabs-autohide",
	"hyper-alt-click",
	"hypergoogle",
	"hyper-manager",
	"hyper-fileio",
	"hyper-tab-icons",
	"hyperlinks"
  ],
  
  // Configuration locale des plugins
  localPlugins: [],
  
  // Configuration des keymaps personnalisés
  keymaps: {
    // Exemple : 'window:devtools': 'cmd+alt+o',
  }
};
