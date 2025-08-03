class AppLocalizations {
  static const Map<String, Map<String, String>> _localizedValues = {
    'en': {
      // Navigation
      'home': 'Home',
      'services': 'Services',
      'portfolio': 'Portfolio',
      'contact': 'Contact',
      
      // Home Screen
      'welcome_title': 'UN Design',
      'welcome_subtitle': 'Crafting Digital Excellence',
      'intro_text': 'We create stunning, modern websites that drive results. From concept to launch, we bring your vision to life with cutting-edge design and seamless functionality.',
      'cta_button': "Let's Build Something Great",
      'scroll_down': 'Scroll to explore',
      
      // Services Screen
      'services_title': 'Our Services',
      'services_subtitle': 'Comprehensive web solutions for your business',
      'landing_page': 'Landing Page',
      'landing_page_desc': 'High-converting landing pages designed to capture leads and drive sales.',
      'ecommerce': 'E-commerce',
      'ecommerce_desc': 'Full-featured online stores with secure payment processing and inventory management.',
      'branding': 'Branding',
      'branding_desc': 'Complete brand identity including logos, color schemes, and visual guidelines.',
      'web_app': 'Web Applications',
      'web_app_desc': 'Custom web applications built with modern technologies and scalable architecture.',
      'ui_ux': 'UI/UX Design',
      'ui_ux_desc': 'User-centered design that creates intuitive and engaging digital experiences.',
      'maintenance': 'Maintenance',
      'maintenance_desc': 'Ongoing support, updates, and optimization to keep your website running smoothly.',
      
      // Portfolio Screen
      'portfolio_title': 'Our Work',
      'portfolio_subtitle': 'Showcasing our latest projects',
      'view_project': 'View Project',
      
      // Contact Screen
      'contact_title': 'Get In Touch',
      'contact_subtitle': 'Ready to start your project? Let\'s talk.',
      'name_label': 'Full Name',
      'name_hint': 'Enter your full name',
      'email_label': 'Email Address',
      'email_hint': 'Enter your email address',
      'message_label': 'Message',
      'message_hint': 'Tell us about your project...',
      'send_message': 'Send Message',
      'contact_success': 'Message sent successfully!',
      'contact_error': 'Failed to send message. Please try again.',
      
      // Language
      'language': 'Language',
      'english': 'English',
      'serbian': 'Serbian',
      
      // Common
      'loading': 'Loading...',
      'error': 'Error',
      'retry': 'Retry',
    },
    'sr': {
      // Navigation
      'home': 'Početna',
      'services': 'Usluge',
      'portfolio': 'Portfolio',
      'contact': 'Kontakt',
      
      // Home Screen
      'welcome_title': 'UN Design',
      'welcome_subtitle': 'Kreiramo Digitalnu Izvrsnost',
      'intro_text': 'Kreiramo impresivne, moderne web stranice koje donose rezultate. Od koncepta do lansiranja, ostvarujemo vašu viziju sa najnovijim dizajnom i besprekornom funkcionalnošću.',
      'cta_button': 'Hajde da Napravimo Nešto Veliko',
      'scroll_down': 'Skrolujte za istraživanje',
      
      // Services Screen
      'services_title': 'Naše Usluge',
      'services_subtitle': 'Sveobuhvatna web rešenja za vaš biznis',
      'landing_page': 'Landing Stranica',
      'landing_page_desc': 'Visoko konverzivne landing stranice dizajnirane za privlačenje potencijalnih klijenata i povećanje prodaje.',
      'ecommerce': 'E-commerce',
      'ecommerce_desc': 'Potpuno funkcionalne online prodavnice sa sigurnim procesiranjem plaćanja i upravljanjem inventarom.',
      'branding': 'Brending',
      'branding_desc': 'Kompletna brend identifikacija uključujući logotipe, šeme boja i vizuelne smernice.',
      'web_app': 'Web Aplikacije',
      'web_app_desc': 'Prilagođene web aplikacije izgrađene sa modernim tehnologijama i skalabilnom arhitekturom.',
      'ui_ux': 'UI/UX Dizajn',
      'ui_ux_desc': 'Dizajn orijentisan na korisnika koji kreira intuitivna i privlačna digitalna iskustva.',
      'maintenance': 'Održavanje',
      'maintenance_desc': 'Kontinuirana podrška, ažuriranja i optimizacija za održavanje vaše web stranice.',
      
      // Portfolio Screen
      'portfolio_title': 'Naš Rad',
      'portfolio_subtitle': 'Prikazujemo naše najnovije projekte',
      'view_project': 'Pogledaj Projekt',
      
      // Contact Screen
      'contact_title': 'Kontaktirajte Nas',
      'contact_subtitle': 'Spremni da započnete svoj projekat? Hajde da razgovaramo.',
      'name_label': 'Ime i Prezime',
      'name_hint': 'Unesite vaše puno ime',
      'email_label': 'Email Adresa',
      'email_hint': 'Unesite vašu email adresu',
      'message_label': 'Poruka',
      'message_hint': 'Recite nam o vašem projektu...',
      'send_message': 'Pošaljite Poruku',
      'contact_success': 'Poruka uspešno poslata!',
      'contact_error': 'Greška pri slanju poruke. Molimo pokušajte ponovo.',
      
      // Language
      'language': 'Jezik',
      'english': 'Engleski',
      'serbian': 'Srpski',
      
      // Common
      'loading': 'Učitavanje...',
      'error': 'Greška',
      'retry': 'Pokušaj ponovo',
    },
  };

  static String getString(String key, String languageCode) {
    return _localizedValues[languageCode]?[key] ?? _localizedValues['en']![key] ?? key;
  }
} 