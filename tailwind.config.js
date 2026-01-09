/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./templates/internalhost/**/*.tpl",
    "./templates/internalhost/**/*.html",
    "./src/**/*.js"
  ],
  theme: {
    extend: {
      colors: {
        // Primaire kleuren
        'ih-primary': '#334155',      // Slate 700 - Hoofdkleur
        'ih-accent': '#EA580C',       // Orange 600 - Accent/CTA
        
        // Secundaire kleuren
        'ih-light': '#F3F4F6',        // Gray 100 - Achtergronden
        'ih-light-accent': '#FEF3E7', // Orange 50 - Soft highlights
        
        // Tekst kleuren
        'ih-body': '#1F2937',         // Gray 800 - Body tekst
        'ih-secondary': '#6B7280',    // Gray 500 - Secundaire tekst
        
        // Semantic kleuren
        'ih-success': '#059669',      // Emerald 600
        'ih-error': '#DC2626',        // Red 600
      },
      fontFamily: {
        'sans': ['Inter', '-apple-system', 'BlinkMacSystemFont', 'Segoe UI', 'Roboto', 'sans-serif'],
        'mono': ['JetBrains Mono', 'Fira Code', 'monospace'],
      },
      fontSize: {
        'display': ['2.25rem', { lineHeight: '1.2', fontWeight: '700' }],  // 36pt
        'h1': ['1.5rem', { lineHeight: '1.3', fontWeight: '700' }],        // 24pt
        'h2': ['1rem', { lineHeight: '1.4', fontWeight: '700' }],          // 16pt
        'h3': ['0.8125rem', { lineHeight: '1.5', fontWeight: '700' }],     // 13pt
        'body': ['0.75rem', { lineHeight: '1.6', fontWeight: '400' }],     // 12pt
        'small': ['0.625rem', { lineHeight: '1.5', fontWeight: '400' }],   // 10pt
      },
    },
  },
  plugins: [],
}
