{include file="$template/header.tpl"}

<!-- Hero Section -->
<section class="hero">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <h1 class="hero-title">
            Servers die het doen.<br>
            <span class="text-ih-accent">Support als je betaalt.</span>
        </h1>
        <p class="hero-subtitle mx-auto mb-8">
            De rest is aan jou. Infrastructuur voor mensen die weten wat ze doen — 
            of het willen leren. Geen betutteling, wel betrouwbaarheid.
        </p>
        <div class="flex flex-wrap justify-center gap-4">
            <a href="{$WEB_ROOT}/cart.php?gid=1" class="btn-primary">
                Bekijk Compute →
            </a>
            <a href="{$WEB_ROOT}/knowledgebase" class="btn-secondary">
                Lees de docs
            </a>
        </div>
        
        <!-- Trust indicators -->
        <div class="mt-12 flex flex-wrap justify-center gap-8 text-sm text-ih-secondary">
            <div class="flex items-center gap-2">
                <svg class="w-5 h-5 text-ih-success" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"/>
                </svg>
                AS204729 Amsterdam
            </div>
            <div class="flex items-center gap-2">
                <svg class="w-5 h-5 text-ih-success" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"/>
                </svg>
                Europese data, Europese wetgeving
            </div>
            <div class="flex items-center gap-2">
                <svg class="w-5 h-5 text-ih-success" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"/>
                </svg>
                Geen US cloud
            </div>
        </div>
    </div>
</section>

<!-- Products Grid -->
<section class="py-20 px-4 sm:px-6 lg:px-8">
    <div class="max-w-7xl mx-auto">
        <div class="text-center mb-12">
            <h2 class="text-h1 mb-4">Wat wil je draaien?</h2>
            <p class="text-ih-secondary max-w-2xl mx-auto">
                Van virtuele machines tot eigen hardware in ons datacenter. 
                Kies wat bij je past.
            </p>
        </div>
        
        <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-6">
            
            <!-- Compute -->
            <a href="{$WEB_ROOT}/cart.php?gid=1" class="product-card group hover:no-underline">
                <div class="w-12 h-12 bg-ih-light rounded-xl flex items-center justify-center text-ih-primary mb-4 group-hover:bg-ih-accent group-hover:text-white transition-colors">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2"/></svg>
                </div>
                <h3 class="product-card-title">Compute</h3>
                <p class="product-card-tagline">Jouw VM, jouw root, jouw verantwoordelijkheid</p>
            </a>
            
            <!-- Bare Metal -->
            <a href="{$WEB_ROOT}/cart.php?gid=2" class="product-card group hover:no-underline">
                <div class="w-12 h-12 bg-ih-light rounded-xl flex items-center justify-center text-ih-primary mb-4 group-hover:bg-ih-accent group-hover:text-white transition-colors">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z"/></svg>
                </div>
                <h3 class="product-card-title">Bare Metal</h3>
                <p class="product-card-tagline">De hele machine. Geen buren.</p>
            </a>
            
            <!-- Arena -->
            <a href="{$WEB_ROOT}/cart.php?gid=3" class="product-card group hover:no-underline">
                <div class="w-12 h-12 bg-ih-light rounded-xl flex items-center justify-center text-ih-primary mb-4 group-hover:bg-ih-accent group-hover:text-white transition-colors">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11 4a2 2 0 114 0v1a1 1 0 001 1h3a1 1 0 011 1v3a1 1 0 01-1 1h-1a2 2 0 100 4h1a1 1 0 011 1v3a1 1 0 01-1 1h-3a1 1 0 01-1-1v-1a2 2 0 10-4 0v1a1 1 0 01-1 1H7a1 1 0 01-1-1v-3a1 1 0 00-1-1H4a2 2 0 110-4h1a1 1 0 001-1V7a1 1 0 011-1h3a1 1 0 001-1V4z"/></svg>
                </div>
                <h3 class="product-card-title">Arena</h3>
                <p class="product-card-tagline">Lag-vrij, jij bent admin</p>
            </a>
            
            <!-- Colo -->
            <a href="{$WEB_ROOT}/cart.php?gid=4" class="product-card group hover:no-underline">
                <div class="w-12 h-12 bg-ih-light rounded-xl flex items-center justify-center text-ih-primary mb-4 group-hover:bg-ih-accent group-hover:text-white transition-colors">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"/></svg>
                </div>
                <h3 class="product-card-title">Colo</h3>
                <p class="product-card-tagline">Jouw hardware, ons datacenter</p>
            </a>
            
            <!-- Reseller -->
            <a href="{$WEB_ROOT}/cart.php?gid=5" class="product-card group hover:no-underline">
                <div class="w-12 h-12 bg-ih-light rounded-xl flex items-center justify-center text-ih-primary mb-4 group-hover:bg-ih-accent group-hover:text-white transition-colors">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0z"/></svg>
                </div>
                <h3 class="product-card-title">Reseller</h3>
                <p class="product-card-tagline">Jouw klanten, jouw marge</p>
            </a>
            
            <!-- Mail -->
            <a href="{$WEB_ROOT}/cart.php?gid=6" class="product-card group hover:no-underline">
                <div class="w-12 h-12 bg-ih-light rounded-xl flex items-center justify-center text-ih-primary mb-4 group-hover:bg-ih-accent group-hover:text-white transition-colors">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>
                </div>
                <h3 class="product-card-title">Mail</h3>
                <p class="product-card-tagline">Mail die werkt. Geen tracking, geen ads.</p>
            </a>
            
            <!-- Storage -->
            <a href="{$WEB_ROOT}/cart.php?gid=7" class="product-card group hover:no-underline">
                <div class="w-12 h-12 bg-ih-light rounded-xl flex items-center justify-center text-ih-primary mb-4 group-hover:bg-ih-accent group-hover:text-white transition-colors">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 7v10c0 2.21 3.582 4 8 4s8-1.79 8-4V7M4 7c0 2.21 3.582 4 8 4s8-1.79 8-4M4 7c0-2.21 3.582-4 8-4s8 1.79 8 4"/></svg>
                </div>
                <h3 class="product-card-title">Storage</h3>
                <p class="product-card-tagline">S3-compatible. Jouw data, onze schijven.</p>
            </a>
            
            <!-- Domeinen -->
            <a href="{$WEB_ROOT}/cart.php?gid=8" class="product-card group hover:no-underline">
                <div class="w-12 h-12 bg-ih-light rounded-xl flex items-center justify-center text-ih-primary mb-4 group-hover:bg-ih-accent group-hover:text-white transition-colors">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 12a9 9 0 01-9 9m9-9a9 9 0 00-9-9m9 9H3m9 9a9 9 0 01-9-9m9 9c1.657 0 3-4.03 3-9s-1.343-9-3-9m0 18c-1.657 0-3-4.03-3-9s1.343-9 3-9m-9 9a9 9 0 019-9"/></svg>
                </div>
                <h3 class="product-card-title">Domeinen</h3>
                <p class="product-card-tagline">Het begint hier.</p>
            </a>
            
        </div>
    </div>
</section>

<!-- Terminal Section -->
<section class="bg-ih-primary py-20 px-4 sm:px-6 lg:px-8">
    <div class="max-w-4xl mx-auto">
        <div class="text-center mb-8">
            <h2 class="text-h1 text-white mb-4">Voor wie het zelf doet</h2>
            <p class="text-gray-300">
                Root access. Eigen IP. Geen handjes vasthouden.
            </p>
        </div>
        
        <div class="terminal">
            <div class="mb-2"><span class="text-ih-accent">$</span> ssh root@compute-01.internalhost.eu</div>
            <div class="text-gray-400 mb-2">Welcome to Ubuntu 24.04 LTS</div>
            <div class="mb-2"><span class="text-ih-accent">root@compute-01:~#</span> neofetch</div>
            <div class="text-gray-400 mb-4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OS: Ubuntu 24.04 LTS x86_64<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Host: KVM/QEMU<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Kernel: 6.8.0-generic<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CPU: AMD EPYC (4) @ 3.0GHz<br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Memory: 512MiB / 8192MiB
            </div>
            <div><span class="text-ih-accent">root@compute-01:~#</span> <span class="animate-pulse">_</span></div>
        </div>
    </div>
</section>

<!-- Support CTA -->
<section class="py-20 px-4 sm:px-6 lg:px-8">
    <div class="max-w-4xl mx-auto text-center">
        <h2 class="text-h1 mb-4">Support nodig?</h2>
        <p class="text-ih-secondary mb-8 max-w-2xl mx-auto">
            Eerst de docs lezen, dan pas een ticket. Wij helpen graag — 
            maar alleen als je al geprobeerd hebt het zelf op te lossen.
            Voor managed services: EASEO staat klaar.
        </p>
        <div class="flex flex-wrap justify-center gap-4">
            <a href="{$WEB_ROOT}/knowledgebase" class="btn-primary">
                Documentatie lezen
            </a>
            <a href="https://easeo.nl" target="_blank" rel="noopener" class="btn-secondary">
                EASEO Beheer →
            </a>
        </div>
    </div>
</section>

{include file="$template/footer.tpl"}
