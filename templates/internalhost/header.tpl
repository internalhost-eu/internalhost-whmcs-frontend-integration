<!DOCTYPE html>
<html lang="{$language}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{$pagetitle} - {$companyname}</title>
    
    {$headoutput}
    
    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=JetBrains+Mono:wght@400;500&display=swap" rel="stylesheet">
    
    <!-- Internalhost Styles -->
    <link rel="stylesheet" href="{$WEB_ROOT}/templates/{$template}/css/styles.css">
    
    <!-- Favicon -->
    <link rel="icon" type="image/svg+xml" href="{$WEB_ROOT}/templates/{$template}/images/favicon.svg">
</head>
<body class="min-h-screen flex flex-col">
    
    <!-- Skip to content (accessibility) -->
    <a href="#main-content" class="sr-only focus:not-sr-only focus:absolute focus:top-4 focus:left-4 btn-primary">
        Skip to content
    </a>

    <!-- Header -->
    <header class="sticky top-0 z-50 bg-white border-b border-gray-200">
        <nav class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex items-center justify-between h-16">
                
                <!-- Logo -->
                <a href="{$WEB_ROOT}" class="flex items-center hover:no-underline">
                    <span class="text-xl font-bold text-ih-primary tracking-tight">INTERNALHOST</span>
                </a>

                <!-- Desktop Navigation -->
                <div class="hidden lg:flex items-center gap-1">
                    
                    <!-- Products Dropdown -->
                    <div class="relative group">
                        <button class="nav-link flex items-center gap-1">
                            Producten
                            <svg class="w-4 h-4 transition-transform group-hover:rotate-180" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"/>
                            </svg>
                        </button>
                        
                        <!-- Dropdown Menu -->
                        <div class="absolute left-0 top-full pt-2 opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200">
                            <div class="bg-white rounded-xl shadow-xl border border-gray-200 p-4 w-80">
                                <div class="grid gap-1">
                                    <a href="{$WEB_ROOT}/cart.php?gid=1" class="flex items-start gap-3 p-3 rounded-lg hover:bg-ih-light hover:no-underline transition-colors">
                                        <div class="w-10 h-10 bg-ih-light rounded-lg flex items-center justify-center text-ih-primary">
                                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2"/></svg>
                                        </div>
                                        <div>
                                            <div class="font-semibold text-ih-primary">Compute</div>
                                            <div class="text-sm text-ih-secondary">Jouw VM, jouw root, jouw verantwoordelijkheid</div>
                                        </div>
                                    </a>
                                    
                                    <a href="{$WEB_ROOT}/cart.php?gid=2" class="flex items-start gap-3 p-3 rounded-lg hover:bg-ih-light hover:no-underline transition-colors">
                                        <div class="w-10 h-10 bg-ih-light rounded-lg flex items-center justify-center text-ih-primary">
                                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z"/></svg>
                                        </div>
                                        <div>
                                            <div class="font-semibold text-ih-primary">Bare Metal</div>
                                            <div class="text-sm text-ih-secondary">De hele machine. Geen buren.</div>
                                        </div>
                                    </a>
                                    
                                    <a href="{$WEB_ROOT}/cart.php?gid=3" class="flex items-start gap-3 p-3 rounded-lg hover:bg-ih-light hover:no-underline transition-colors">
                                        <div class="w-10 h-10 bg-ih-light rounded-lg flex items-center justify-center text-ih-primary">
                                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 4a2 2 0 114 0v1a1 1 0 001 1h3a1 1 0 011 1v3a1 1 0 01-1 1h-1a2 2 0 100 4h1a1 1 0 011 1v3a1 1 0 01-1 1h-3a1 1 0 01-1-1v-1a2 2 0 10-4 0v1a1 1 0 01-1 1H7a1 1 0 01-1-1v-3a1 1 0 00-1-1H4a2 2 0 110-4h1a1 1 0 001-1V7a1 1 0 011-1h3a1 1 0 001-1V4z"/></svg>
                                        </div>
                                        <div>
                                            <div class="font-semibold text-ih-primary">Arena</div>
                                            <div class="text-sm text-ih-secondary">Lag-vrij, jij bent admin</div>
                                        </div>
                                    </a>
                                    
                                    <a href="{$WEB_ROOT}/cart.php?gid=4" class="flex items-start gap-3 p-3 rounded-lg hover:bg-ih-light hover:no-underline transition-colors">
                                        <div class="w-10 h-10 bg-ih-light rounded-lg flex items-center justify-center text-ih-primary">
                                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"/></svg>
                                        </div>
                                        <div>
                                            <div class="font-semibold text-ih-primary">Colo</div>
                                            <div class="text-sm text-ih-secondary">Jouw hardware, ons datacenter</div>
                                        </div>
                                    </a>
                                    
                                    <div class="border-t border-gray-100 my-2"></div>
                                    
                                    <a href="{$WEB_ROOT}/cart.php?gid=5" class="flex items-start gap-3 p-3 rounded-lg hover:bg-ih-light hover:no-underline transition-colors">
                                        <div class="w-10 h-10 bg-ih-light rounded-lg flex items-center justify-center text-ih-primary">
                                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0z"/></svg>
                                        </div>
                                        <div>
                                            <div class="font-semibold text-ih-primary">Reseller</div>
                                            <div class="text-sm text-ih-secondary">Jouw klanten, jouw marge</div>
                                        </div>
                                    </a>
                                    
                                    <a href="{$WEB_ROOT}/cart.php?gid=6" class="flex items-start gap-3 p-3 rounded-lg hover:bg-ih-light hover:no-underline transition-colors">
                                        <div class="w-10 h-10 bg-ih-light rounded-lg flex items-center justify-center text-ih-primary">
                                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>
                                        </div>
                                        <div>
                                            <div class="font-semibold text-ih-primary">Mail</div>
                                            <div class="text-sm text-ih-secondary">Mail die werkt. Geen tracking, geen ads.</div>
                                        </div>
                                    </a>
                                    
                                    <a href="{$WEB_ROOT}/cart.php?gid=7" class="flex items-start gap-3 p-3 rounded-lg hover:bg-ih-light hover:no-underline transition-colors">
                                        <div class="w-10 h-10 bg-ih-light rounded-lg flex items-center justify-center text-ih-primary">
                                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 7v10c0 2.21 3.582 4 8 4s8-1.79 8-4V7M4 7c0 2.21 3.582 4 8 4s8-1.79 8-4M4 7c0-2.21 3.582-4 8-4s8 1.79 8 4"/></svg>
                                        </div>
                                        <div>
                                            <div class="font-semibold text-ih-primary">Storage</div>
                                            <div class="text-sm text-ih-secondary">S3-compatible. Jouw data, onze schijven.</div>
                                        </div>
                                    </a>
                                    
                                    <a href="{$WEB_ROOT}/cart.php?gid=8" class="flex items-start gap-3 p-3 rounded-lg hover:bg-ih-light hover:no-underline transition-colors">
                                        <div class="w-10 h-10 bg-ih-light rounded-lg flex items-center justify-center text-ih-primary">
                                            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 12a9 9 0 01-9 9m9-9a9 9 0 00-9-9m9 9H3m9 9a9 9 0 01-9-9m9 9c1.657 0 3-4.03 3-9s-1.343-9-3-9m0 18c-1.657 0-3-4.03-3-9s1.343-9 3-9m-9 9a9 9 0 019-9"/></svg>
                                        </div>
                                        <div>
                                            <div class="font-semibold text-ih-primary">Domeinen</div>
                                            <div class="text-sm text-ih-secondary">Het begint hier.</div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <a href="{$WEB_ROOT}/knowledgebase" class="nav-link">Docs</a>
                    <a href="{$WEB_ROOT}/contact.php" class="nav-link">Support</a>
                    
                </div>

                <!-- Right side: Auth -->
                <div class="flex items-center gap-4">
                    {if $loggedin}
                        <a href="{$WEB_ROOT}/clientarea.php" class="nav-link hidden sm:block">
                            {$clientname}
                        </a>
                        <a href="{$WEB_ROOT}/logout.php" class="btn-secondary text-sm py-2 px-4">
                            Uitloggen
                        </a>
                    {else}
                        <a href="{$WEB_ROOT}/clientarea.php" class="nav-link hidden sm:block">
                            Inloggen
                        </a>
                        <a href="{$WEB_ROOT}/register.php" class="btn-primary text-sm py-2 px-4">
                            Account aanmaken
                        </a>
                    {/if}
                    
                    <!-- Mobile menu button -->
                    <button type="button" class="lg:hidden p-2 text-ih-primary hover:bg-ih-light rounded-lg" id="mobile-menu-button">
                        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"/>
                        </svg>
                    </button>
                </div>
            </div>
        </nav>
        
        <!-- Mobile Navigation -->
        <div class="lg:hidden hidden" id="mobile-menu">
            <div class="px-4 py-4 space-y-2 bg-ih-light border-t border-gray-200">
                <div class="font-semibold text-ih-secondary text-sm uppercase tracking-wide px-3 py-2">Producten</div>
                <a href="{$WEB_ROOT}/cart.php?gid=1" class="block px-3 py-2 rounded-lg hover:bg-white">Compute</a>
                <a href="{$WEB_ROOT}/cart.php?gid=2" class="block px-3 py-2 rounded-lg hover:bg-white">Bare Metal</a>
                <a href="{$WEB_ROOT}/cart.php?gid=3" class="block px-3 py-2 rounded-lg hover:bg-white">Arena</a>
                <a href="{$WEB_ROOT}/cart.php?gid=4" class="block px-3 py-2 rounded-lg hover:bg-white">Colo</a>
                <a href="{$WEB_ROOT}/cart.php?gid=5" class="block px-3 py-2 rounded-lg hover:bg-white">Reseller</a>
                <a href="{$WEB_ROOT}/cart.php?gid=6" class="block px-3 py-2 rounded-lg hover:bg-white">Mail</a>
                <a href="{$WEB_ROOT}/cart.php?gid=7" class="block px-3 py-2 rounded-lg hover:bg-white">Storage</a>
                <a href="{$WEB_ROOT}/cart.php?gid=8" class="block px-3 py-2 rounded-lg hover:bg-white">Domeinen</a>
                <div class="border-t border-gray-200 my-2"></div>
                <a href="{$WEB_ROOT}/knowledgebase" class="block px-3 py-2 rounded-lg hover:bg-white">Docs</a>
                <a href="{$WEB_ROOT}/contact.php" class="block px-3 py-2 rounded-lg hover:bg-white">Support</a>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <main id="main-content" class="flex-1">
