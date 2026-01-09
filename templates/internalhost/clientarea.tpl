{include file="$template/header.tpl"}

<section class="py-12 px-4 sm:px-6 lg:px-8">
    <div class="max-w-7xl mx-auto">
        
        <!-- Welcome header -->
        <div class="mb-8">
            <h1 class="text-h1 mb-2">Welkom terug, {$clientname}</h1>
            <p class="text-ih-secondary">Beheer je diensten, facturen en support tickets.</p>
        </div>
        
        <!-- Quick stats -->
        <div class="grid sm:grid-cols-2 lg:grid-cols-4 gap-6 mb-12">
            
            <div class="card">
                <div class="flex items-center gap-4">
                    <div class="w-12 h-12 bg-ih-light rounded-xl flex items-center justify-center text-ih-primary">
                        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2"/>
                        </svg>
                    </div>
                    <div>
                        <div class="text-2xl font-bold text-ih-primary">{$clientsstats.productsnumactive}</div>
                        <div class="text-sm text-ih-secondary">Actieve diensten</div>
                    </div>
                </div>
            </div>
            
            <div class="card">
                <div class="flex items-center gap-4">
                    <div class="w-12 h-12 bg-ih-light rounded-xl flex items-center justify-center text-ih-primary">
                        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z"/>
                        </svg>
                    </div>
                    <div>
                        <div class="text-2xl font-bold text-ih-primary">{$clientsstats.numunpaidinvoices}</div>
                        <div class="text-sm text-ih-secondary">Openstaande facturen</div>
                    </div>
                </div>
            </div>
            
            <div class="card">
                <div class="flex items-center gap-4">
                    <div class="w-12 h-12 bg-ih-light rounded-xl flex items-center justify-center text-ih-primary">
                        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 10h.01M12 10h.01M16 10h.01M9 16H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-5l-5 5v-5z"/>
                        </svg>
                    </div>
                    <div>
                        <div class="text-2xl font-bold text-ih-primary">{$clientsstats.numtickets}</div>
                        <div class="text-sm text-ih-secondary">Open tickets</div>
                    </div>
                </div>
            </div>
            
            <div class="card">
                <div class="flex items-center gap-4">
                    <div class="w-12 h-12 bg-ih-light rounded-xl flex items-center justify-center text-ih-primary">
                        <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 12a9 9 0 01-9 9m9-9a9 9 0 00-9-9m9 9H3m9 9a9 9 0 01-9-9m9 9c1.657 0 3-4.03 3-9s-1.343-9-3-9m0 18c-1.657 0-3-4.03-3-9s1.343-9 3-9m-9 9a9 9 0 019-9"/>
                        </svg>
                    </div>
                    <div>
                        <div class="text-2xl font-bold text-ih-primary">{$clientsstats.numdomains}</div>
                        <div class="text-sm text-ih-secondary">Domeinen</div>
                    </div>
                </div>
            </div>
            
        </div>
        
        <div class="grid lg:grid-cols-3 gap-8">
            
            <!-- Main content -->
            <div class="lg:col-span-2 space-y-8">
                
                <!-- Active services -->
                <div class="card">
                    <div class="flex items-center justify-between mb-6">
                        <h2 class="text-h2">Actieve diensten</h2>
                        <a href="{$WEB_ROOT}/clientarea.php?action=products" class="text-ih-accent text-sm font-medium">
                            Bekijk alle →
                        </a>
                    </div>
                    
                    {if $services}
                        <div class="space-y-4">
                            {foreach $services as $service}
                                <div class="flex items-center justify-between p-4 bg-ih-light rounded-lg">
                                    <div class="flex items-center gap-4">
                                        <div class="w-10 h-10 bg-white rounded-lg flex items-center justify-center">
                                            <svg class="w-5 h-5 text-ih-primary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2"/>
                                            </svg>
                                        </div>
                                        <div>
                                            <div class="font-semibold text-ih-primary">{$service.product}</div>
                                            <div class="text-sm text-ih-secondary">{$service.domain}</div>
                                        </div>
                                    </div>
                                    <div class="flex items-center gap-4">
                                        {if $service.status eq 'Active'}
                                            <span class="status-online text-sm text-ih-success font-medium">Actief</span>
                                        {else}
                                            <span class="text-sm text-ih-secondary">{$service.status}</span>
                                        {/if}
                                        <a href="{$WEB_ROOT}/clientarea.php?action=productdetails&id={$service.id}" class="btn-secondary text-xs py-1.5 px-3">
                                            Beheer
                                        </a>
                                    </div>
                                </div>
                            {/foreach}
                        </div>
                    {else}
                        <div class="text-center py-8">
                            <div class="w-16 h-16 bg-ih-light rounded-full flex items-center justify-center mx-auto mb-4">
                                <svg class="w-8 h-8 text-ih-secondary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2"/>
                                </svg>
                            </div>
                            <p class="text-ih-secondary mb-4">Nog geen actieve diensten.</p>
                            <a href="{$WEB_ROOT}/cart.php" class="btn-primary text-sm">Bekijk producten</a>
                        </div>
                    {/if}
                </div>
                
                <!-- Recent invoices -->
                <div class="card">
                    <div class="flex items-center justify-between mb-6">
                        <h2 class="text-h2">Recente facturen</h2>
                        <a href="{$WEB_ROOT}/clientarea.php?action=invoices" class="text-ih-accent text-sm font-medium">
                            Bekijk alle →
                        </a>
                    </div>
                    
                    {if $invoices}
                        <div class="overflow-x-auto">
                            <table class="w-full">
                                <thead>
                                    <tr class="text-left text-sm text-ih-secondary border-b border-gray-200">
                                        <th class="pb-3 font-medium">Factuur #</th>
                                        <th class="pb-3 font-medium">Datum</th>
                                        <th class="pb-3 font-medium">Bedrag</th>
                                        <th class="pb-3 font-medium">Status</th>
                                        <th class="pb-3"></th>
                                    </tr>
                                </thead>
                                <tbody class="text-sm">
                                    {foreach $invoices as $invoice}
                                        <tr class="border-b border-gray-100 last:border-0">
                                            <td class="py-4 font-medium text-ih-primary">{$invoice.invoicenum}</td>
                                            <td class="py-4 text-ih-secondary">{$invoice.date}</td>
                                            <td class="py-4 text-ih-primary">{$invoice.total}</td>
                                            <td class="py-4">
                                                {if $invoice.status eq 'Paid'}
                                                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-emerald-100 text-emerald-800">Betaald</span>
                                                {elseif $invoice.status eq 'Unpaid'}
                                                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-orange-100 text-orange-800">Openstaand</span>
                                                {else}
                                                    <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-gray-100 text-gray-800">{$invoice.status}</span>
                                                {/if}
                                            </td>
                                            <td class="py-4 text-right">
                                                <a href="{$WEB_ROOT}/viewinvoice.php?id={$invoice.id}" class="text-ih-accent text-sm">Bekijk</a>
                                            </td>
                                        </tr>
                                    {/foreach}
                                </tbody>
                            </table>
                        </div>
                    {else}
                        <p class="text-ih-secondary text-center py-8">Geen recente facturen.</p>
                    {/if}
                </div>
                
            </div>
            
            <!-- Sidebar -->
            <div class="space-y-6">
                
                <!-- Quick actions -->
                <div class="card">
                    <h3 class="text-h2 mb-4">Snelle acties</h3>
                    <div class="space-y-2">
                        <a href="{$WEB_ROOT}/cart.php" class="flex items-center gap-3 p-3 rounded-lg hover:bg-ih-light transition-colors hover:no-underline">
                            <svg class="w-5 h-5 text-ih-accent" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"/>
                            </svg>
                            <span class="text-ih-body">Nieuwe dienst bestellen</span>
                        </a>
                        <a href="{$WEB_ROOT}/submitticket.php" class="flex items-center gap-3 p-3 rounded-lg hover:bg-ih-light transition-colors hover:no-underline">
                            <svg class="w-5 h-5 text-ih-accent" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 10h.01M12 10h.01M16 10h.01M9 16H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-5l-5 5v-5z"/>
                            </svg>
                            <span class="text-ih-body">Ticket openen</span>
                        </a>
                        <a href="{$WEB_ROOT}/knowledgebase" class="flex items-center gap-3 p-3 rounded-lg hover:bg-ih-light transition-colors hover:no-underline">
                            <svg class="w-5 h-5 text-ih-accent" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253"/>
                            </svg>
                            <span class="text-ih-body">Documentatie</span>
                        </a>
                    </div>
                </div>
                
                <!-- Account info -->
                <div class="card">
                    <h3 class="text-h2 mb-4">Account</h3>
                    <div class="space-y-3 text-sm">
                        <div class="flex justify-between">
                            <span class="text-ih-secondary">Email</span>
                            <span class="text-ih-body">{$clientemail}</span>
                        </div>
                        <div class="flex justify-between">
                            <span class="text-ih-secondary">Klant sinds</span>
                            <span class="text-ih-body">{$clientsince}</span>
                        </div>
                    </div>
                    <div class="mt-4 pt-4 border-t border-gray-200">
                        <a href="{$WEB_ROOT}/clientarea.php?action=details" class="text-ih-accent text-sm">
                            Gegevens bewerken →
                        </a>
                    </div>
                </div>
                
                <!-- Support notice -->
                <div class="alert-info">
                    <h4 class="font-semibold text-ih-primary mb-2">Support nodig?</h4>
                    <p class="text-sm text-ih-body mb-3">
                        Check eerst de docs. Voor managed support: EASEO staat klaar.
                    </p>
                    <a href="https://easeo.nl" target="_blank" rel="noopener" class="text-ih-accent text-sm font-medium">
                        EASEO Beheer →
                    </a>
                </div>
                
            </div>
            
        </div>
        
    </div>
</section>

{include file="$template/footer.tpl"}
