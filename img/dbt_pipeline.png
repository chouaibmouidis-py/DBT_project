<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Post Not Found</title>
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="apple-touch-icon" href="/images/apple-touch-icon.png">
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        // Cyan glow - from the AI dividing line
                        cyber: {
                            50: '#ecfeff',
                            100: '#cffafe',
                            200: '#a5f3fc',
                            300: '#67e8f9',
                            400: '#22d3ee',
                            500: '#00d4ff',
                            600: '#00b8e6',
                            700: '#0891b2',
                            800: '#155e75',
                            900: '#164e63',
                        },
                        // Dark slate - from the background/cap
                        slate: {
                            750: '#1e293b',
                            850: '#0f172a',
                            950: '#020617',
                        },
                        // Warm accent - from human side warmth
                        warm: {
                            400: '#c9a87c',
                            500: '#b8956f',
                            600: '#a07d5a',
                        },
                        // Keep accent for hashtags
                        accent: {
                            400: '#fb923c',
                            500: '#f97316',
                            600: '#ea580c',
                        }
                    }
                }
            }
        }
    </script>
    <style>
        .line-clamp-3 {
            display: -webkit-box;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
            overflow: hidden;
        }
        /* Cyan glow effect */
        .glow-cyber {
            box-shadow: 0 0 15px rgba(0, 212, 255, 0.3);
        }
        .glow-cyber-sm {
            box-shadow: 0 0 8px rgba(0, 212, 255, 0.25);
        }
        .text-glow {
            text-shadow: 0 0 10px rgba(0, 212, 255, 0.5);
        }
        /* Subtle gradient background */
        .bg-mesh {
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 50%, #0f172a 100%);
        }
        /* Avatar ring glow */
        .ring-glow {
            box-shadow: 0 0 0 2px rgba(0, 212, 255, 0.5), 0 0 15px rgba(0, 212, 255, 0.3);
        }
        /* Card hover effect */
        .card-hover {
            transition: all 0.3s ease;
        }
        .card-hover:hover {
            box-shadow: 0 0 20px rgba(0, 212, 255, 0.15);
            border-color: rgba(0, 212, 255, 0.3);
        }
        /* Stretched link - makes entire card clickable */
        .stretched-link::after {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 1;
            content: '';
        }
        /* Cyber header styles */
        .cyber-header {
            background: linear-gradient(180deg, rgba(15, 23, 42, 0.98) 0%, rgba(30, 41, 59, 0.95) 100%);
            border-bottom: 1px solid rgba(0, 212, 255, 0.2);
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.3), 0 1px 0 rgba(0, 212, 255, 0.1), inset 0 1px 0 rgba(255, 255, 255, 0.03);
        }
        .cyber-header::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height: 1px;
            background: linear-gradient(90deg, transparent, rgba(0, 212, 255, 0.5), transparent);
        }
        /* Circuit pattern overlay */
        .circuit-pattern {
            position: relative;
        }
        .circuit-pattern::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-image:
                linear-gradient(90deg, rgba(0, 212, 255, 0.03) 1px, transparent 1px),
                linear-gradient(rgba(0, 212, 255, 0.03) 1px, transparent 1px);
            background-size: 20px 20px;
            pointer-events: none;
        }
        /* Glowing border accent */
        .glow-border-bottom {
            position: relative;
        }
        .glow-border-bottom::after {
            content: '';
            position: absolute;
            bottom: -1px;
            left: 50%;
            transform: translateX(-50%);
            width: 200px;
            height: 2px;
            background: linear-gradient(90deg, transparent, #00d4ff, transparent);
            filter: blur(1px);
        }
        /* Scan line animation */
        @keyframes scanline {
            0% { transform: translateX(-100%); }
            100% { transform: translateX(100%); }
        }
        .cyber-header .scan-line {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 1px;
            background: linear-gradient(90deg, transparent, rgba(0, 212, 255, 0.8), transparent);
            animation: scanline 3s linear infinite;
            opacity: 0.5;
        }
        /* Tech corner accents */
        .tech-corner::before,
        .tech-corner::after {
            content: '';
            position: absolute;
            width: 20px;
            height: 20px;
            border-color: rgba(0, 212, 255, 0.3);
            border-style: solid;
        }
        .tech-corner::before {
            top: 0;
            left: 0;
            border-width: 2px 0 0 2px;
        }
        .tech-corner::after {
            top: 0;
            right: 0;
            border-width: 2px 2px 0 0;
        }
    </style>
</head>
<body class="bg-slate-900 min-h-screen text-gray-100 overflow-x-hidden">
    <!-- Navigation -->
    <nav class="cyber-header circuit-pattern glow-border-bottom sticky top-0 z-50 backdrop-blur-sm">
        <div class="scan-line"></div>
        <div class="max-w-3xl mx-auto px-4 relative">
            <div class="flex justify-between items-center h-16">
                <!-- Logo/Brand -->
                <a href="/" class="flex items-center space-x-3 group">
                    <div class="relative">
                        <img src="/images/luke-avatar.png" alt="Luke" class="w-10 h-10 rounded-full ring-2 ring-cyber-500/50 group-hover:ring-glow transition-all duration-300">
                        <div class="absolute -inset-1 rounded-full bg-cyber-500/20 blur-sm group-hover:bg-cyber-500/30 transition-all -z-10"></div>
                    </div>
                    <div>
                        <span class="text-xl font-bold text-cyber-400 group-hover:text-glow transition-all">Luke.co</span>
                        <span class="hidden sm:inline text-sm text-slate-400 ml-2">Built by AI. Written by a Human.</span>
                    </div>
                </a>

                <!-- Search Box -->
                <form action="/search" method="GET" class="hidden sm:block flex-1 max-w-xs mx-4">
                    <div class="relative">
                        <input type="text" name="q" value="" placeholder="Search..."
                               class="w-full bg-slate-800/50 border border-slate-700/50 rounded-lg pl-9 pr-3 py-1.5 text-sm text-gray-100 placeholder-slate-500 focus:outline-none focus:border-cyber-500/50 focus:ring-1 focus:ring-cyber-500/50 transition-all">
                        <svg class="w-4 h-4 text-slate-500 absolute left-2.5 top-1/2 -translate-y-1/2 pointer-events-none" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                        </svg>
                    </div>
                </form>

                <!-- Desktop Navigation -->
                <div class="hidden md:flex items-center space-x-4">
                                            <a href="/login" class="text-slate-300 hover:text-cyber-400 transition-colors">Login</a>
                        <a href="/register" class="relative bg-cyber-500/10 text-cyber-400 font-semibold px-4 py-2 rounded border border-cyber-500/50 hover:bg-cyber-500 hover:text-slate-900 hover:glow-cyber transition-all overflow-hidden group">
                            <span class="relative z-10">Sign Up</span>
                            <div class="absolute inset-0 bg-gradient-to-r from-transparent via-cyber-400/20 to-transparent -translate-x-full group-hover:translate-x-full transition-transform duration-500"></div>
                        </a>
                                    </div>

                <!-- Mobile menu button -->
                <button id="mobile-menu-btn" class="md:hidden text-slate-400 hover:text-cyber-400 transition-colors">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                    </svg>
                </button>
            </div>
        </div>

        <!-- Mobile menu -->
        <div id="mobile-menu" class="hidden md:hidden border-t border-cyber-500/20 bg-slate-900/95 backdrop-blur-sm">
            <div class="px-4 py-3 space-y-3">
                <!-- Mobile Search -->
                <form action="/search" method="GET" class="sm:hidden">
                    <div class="relative">
                        <input type="text" name="q" value="" placeholder="Search..."
                               class="w-full bg-slate-800/50 border border-slate-700/50 rounded-lg pl-9 pr-3 py-2 text-sm text-gray-100 placeholder-slate-500 focus:outline-none focus:border-cyber-500/50 focus:ring-1 focus:ring-cyber-500/50 transition-all">
                        <svg class="w-4 h-4 text-slate-500 absolute left-2.5 top-1/2 -translate-y-1/2 pointer-events-none" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path>
                        </svg>
                    </div>
                </form>
                                    <a href="/login" class="block text-slate-300 hover:text-cyber-400 transition-colors">Login</a>
                    <a href="/register" class="block text-slate-300 hover:text-cyber-400 transition-colors">Sign Up</a>
                            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="max-w-3xl mx-auto px-4 py-6">
        <div class="bg-slate-800/50 rounded-lg border border-slate-700/50 p-8 text-center"><h1 class="text-2xl font-bold text-gray-100 mb-2">Post Not Found</h1><p class="text-slate-400">The post you're looking for doesn't exist.</p><a href="/" class="inline-block mt-4 text-cyber-400 hover:text-cyber-300 transition-colors">&larr; Back to Timeline</a></div>    </main>

    <!-- Footer -->
    <footer class="bg-slate-850 border-t border-slate-700/50 mt-12">
        <div class="max-w-3xl mx-auto px-4 py-8">
            <div class="flex flex-col md:flex-row justify-between items-center space-y-4 md:space-y-0">
                <div class="flex items-center space-x-2">
                    <span class="text-cyber-400 font-semibold">Luke.co</span>
                    <span class="text-slate-600">|</span>
                    <span class="text-sm text-slate-400">Built by AI. Written by a Human.</span>
                </div>
                <div class="text-sm text-slate-500">
                    &copy; 2026 Luke.co                </div>
            </div>
        </div>
    </footer>

    <!-- Mobile Menu JavaScript -->
    <script>
        document.getElementById('mobile-menu-btn').addEventListener('click', function() {
            const menu = document.getElementById('mobile-menu');
            menu.classList.toggle('hidden');
        });
    </script>
</body>
</html>
