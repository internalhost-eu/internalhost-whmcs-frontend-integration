    </main>

    <!-- Footer -->
    <footer class="footer">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="grid grid-cols-2 md:grid-cols-4 gap-8 mb-12">
                
                <!-- Producten -->
                <div>
                    <h4 class="text-white font-semibold mb-4">Producten</h4>
                    <ul class="space-y-2 text-sm">
                        <li><a href="{$WEB_ROOT}/cart.php?gid=1">Compute</a></li>
                        <li><a href="{$WEB_ROOT}/cart.php?gid=2">Bare Metal</a></li>
                        <li><a href="{$WEB_ROOT}/cart.php?gid=3">Arena</a></li>
                        <li><a href="{$WEB_ROOT}/cart.php?gid=4">Colo</a></li>
                        <li><a href="{$WEB_ROOT}/cart.php?gid=5">Reseller</a></li>
                        <li><a href="{$WEB_ROOT}/cart.php?gid=6">Mail</a></li>
                        <li><a href="{$WEB_ROOT}/cart.php?gid=7">Storage</a></li>
                        <li><a href="{$WEB_ROOT}/cart.php?gid=8">Domeinen</a></li>
                    </ul>
                </div>
                
                <!-- Support -->
                <div>
                    <h4 class="text-white font-semibold mb-4">Support</h4>
                    <ul class="space-y-2 text-sm">
                        <li><a href="{$WEB_ROOT}/knowledgebase">Documentatie</a></li>
                        <li><a href="{$WEB_ROOT}/serverstatus.php">Server Status</a></li>
                        <li><a href="{$WEB_ROOT}/submitticket.php">Ticket openen</a></li>
                        <li><a href="https://easeo.nl" target="_blank" rel="noopener">EASEO Beheer →</a></li>
                    </ul>
                </div>
                
                <!-- Account -->
                <div>
                    <h4 class="text-white font-semibold mb-4">Account</h4>
                    <ul class="space-y-2 text-sm">
                        {if $loggedin}
                            <li><a href="{$WEB_ROOT}/clientarea.php">Dashboard</a></li>
                            <li><a href="{$WEB_ROOT}/clientarea.php?action=services">Mijn diensten</a></li>
                            <li><a href="{$WEB_ROOT}/clientarea.php?action=invoices">Facturen</a></li>
                            <li><a href="{$WEB_ROOT}/clientarea.php?action=details">Accountgegevens</a></li>
                        {else}
                            <li><a href="{$WEB_ROOT}/clientarea.php">Inloggen</a></li>
                            <li><a href="{$WEB_ROOT}/register.php">Account aanmaken</a></li>
                            <li><a href="{$WEB_ROOT}/pwreset.php">Wachtwoord vergeten</a></li>
                        {/if}
                    </ul>
                </div>
                
                <!-- Bedrijf -->
                <div>
                    <h4 class="text-white font-semibold mb-4">Internalhost</h4>
                    <ul class="space-y-2 text-sm">
                        <li><a href="{$WEB_ROOT}/announcements">Nieuws</a></li>
                        <li><a href="{$WEB_ROOT}/tos.php">Voorwaarden</a></li>
                        <li><a href="{$WEB_ROOT}/privacy.php">Privacy</a></li>
                        <li><a href="{$WEB_ROOT}/contact.php">Contact</a></li>
                    </ul>
                    
                    <!-- AS Number badge -->
                    <div class="mt-6">
                        <span class="inline-flex items-center gap-2 text-xs bg-ih-primary/50 px-3 py-1.5 rounded-full border border-gray-600">
                            <span class="status-online text-ih-success">●</span>
                            AS204729
                        </span>
                    </div>
                </div>
            </div>
            
            <!-- Bottom bar -->
            <div class="border-t border-gray-600 pt-8 flex flex-col md:flex-row justify-between items-center gap-4">
                <div class="flex items-center gap-4">
                    <span class="text-xl font-bold text-white tracking-tight">INTERNALHOST</span>
                    <span class="text-sm text-gray-400">For the crazy ones.</span>
                </div>
                
                <div class="flex items-center gap-6 text-sm text-gray-400">
                    <span>Amsterdam, NL</span>
                    <span>·</span>
                    <span>© {$date_year} Internalhost</span>
                </div>
            </div>
            
            <!-- Terminal easter egg -->
            <div class="mt-8 text-center">
                <code class="text-xs text-gray-500 font-mono">
                    ssh root@jouw-server.internalhost.eu
                </code>
            </div>
        </div>
    </footer>

    <!-- Mobile menu toggle script -->
    <script>
        document.getElementById('mobile-menu-button')?.addEventListener('click', function() {
            document.getElementById('mobile-menu')?.classList.toggle('hidden');
        });
    </script>

    {$footeroutput}
</body>
</html>
