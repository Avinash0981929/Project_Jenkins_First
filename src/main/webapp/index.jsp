<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>VELORIA — timeless essentials</title>
    
    <!-- Fonts: modern grotesque + refined serif -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Playfair+Display:ital,wght@0,500;0,600;1,500&display=swap" rel="stylesheet">
    <!-- Font Awesome 6 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* New sophisticated color system: warm clay, deep teal, sand, brass */
        :root {
            --bg-primary: #FDF9F4;      /* warm sand background */
            --bg-card: #FFFFFF;
            --text-dark: #2C3A3A;       /* deep teal/charcoal */
            --text-soft: #6B7A6E;
            --accent-brass: #C5A059;     /* refined brass/gold */
            --accent-clay: #C27E5C;      /* terracotta clay */
            --border-mist: #E8E0D5;
            --shadow-sm: 0 12px 28px -8px rgba(0, 0, 0, 0.05), 0 0 0 1px rgba(0, 0, 0, 0.01);
            --shadow-hover: 0 24px 40px -12px rgba(0, 0, 0, 0.12);
            --radius-xl: 32px;
            --radius-lg: 24px;
            --radius-md: 18px;
            --transition: all 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
        }

        body {
            background: var(--bg-primary);
            color: var(--text-dark);
            font-family: 'Inter', sans-serif;
            line-height: 1.45;
            font-weight: 400;
            letter-spacing: -0.01em;
        }

        h1, h2, h3, .serif {
            font-family: 'Playfair Display', serif;
            font-weight: 500;
            letter-spacing: -0.02em;
        }

        .container {
            max-width: 1300px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* Header — minimal, translucent, elevated */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(253, 249, 244, 0.88);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border-mist);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 16px 0;
        }

        .logo {
            font-family: 'Playfair Display', serif;
            font-size: 28px;
            font-weight: 600;
            letter-spacing: -0.5px;
            background: linear-gradient(135deg, #2C3A3A 0%, #C5A059 80%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            text-decoration: none;
        }

        .logo span {
            color: var(--accent-clay);
            background: none;
            -webkit-background-clip: unset;
        }

        .nav-links {
            display: flex;
            gap: 32px;
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            font-weight: 500;
            font-size: 0.9rem;
            color: var(--text-dark);
            transition: var(--transition);
            padding: 6px 0;
            border-bottom: 2px solid transparent;
        }

        .nav-links a:hover {
            color: var(--accent-brass);
            border-bottom-color: var(--accent-brass);
        }

        .search-bar {
            background: white;
            border-radius: 60px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            gap: 12px;
            border: 1px solid var(--border-mist);
            transition: var(--transition);
        }

        .search-bar:focus-within {
            border-color: var(--accent-brass);
            box-shadow: 0 2px 8px rgba(197, 160, 89, 0.1);
        }

        .search-bar input {
            border: none;
            background: transparent;
            outline: none;
            width: 200px;
            font-size: 0.85rem;
            font-family: 'Inter', monospace;
        }

        .icon-circle {
            background: transparent;
            border: none;
            font-size: 1.2rem;
            color: var(--text-dark);
            cursor: pointer;
            width: 40px;
            height: 40px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            transition: var(--transition);
        }

        .icon-circle:hover {
            background: rgba(194, 126, 92, 0.1);
            color: var(--accent-clay);
        }

        .cart-badge {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -4px;
            right: -6px;
            background: var(--accent-clay);
            color: white;
            font-size: 10px;
            font-weight: 700;
            width: 18px;
            height: 18px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
        }

        /* Hero — editorial & serene */
        .hero-grid {
            margin: 32px 0 56px;
            display: flex;
            flex-wrap: wrap;
            gap: 40px;
            align-items: center;
            background: linear-gradient(115deg, #F7F0E8 0%, #FDF9F4 100%);
            border-radius: var(--radius-xl);
            padding: 52px 48px;
        }

        .hero-text {
            flex: 1.2;
        }

        .hero-text h1 {
            font-size: 62px;
            line-height: 1.1;
            margin-bottom: 20px;
            color: #2C3A3A;
        }

        .hero-text p {
            font-size: 1.05rem;
            color: var(--text-soft);
            max-width: 460px;
            margin-bottom: 32px;
        }

        .btn-group {
            display: flex;
            gap: 16px;
            flex-wrap: wrap;
        }

        .btn {
            padding: 12px 28px;
            border-radius: 40px;
            font-weight: 600;
            font-size: 0.9rem;
            cursor: pointer;
            transition: var(--transition);
            border: none;
            font-family: 'Inter', sans-serif;
        }

        .btn-primary {
            background: var(--text-dark);
            color: white;
        }

        .btn-primary:hover {
            background: var(--accent-brass);
            transform: translateY(-3px);
        }

        .btn-secondary {
            background: transparent;
            border: 1.5px solid var(--text-dark);
            color: var(--text-dark);
        }

        .btn-secondary:hover {
            background: var(--text-dark);
            color: white;
            transform: translateY(-3px);
        }

        .hero-visual {
            flex: 0.8;
            text-align: center;
        }

        .hero-visual i {
            font-size: 130px;
            color: var(--accent-brass);
            opacity: 0.7;
        }

        /* section headers */
        .section-header {
            margin: 56px 0 32px;
        }

        .section-header h2 {
            font-size: 44px;
            font-weight: 500;
            margin-bottom: 8px;
        }

        .section-header p {
            color: var(--text-soft);
            border-left: 3px solid var(--accent-brass);
            padding-left: 20px;
        }

        /* Categories */
        .cat-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 22px;
        }

        .category-card {
            background: var(--bg-card);
            border-radius: var(--radius-lg);
            padding: 28px 12px;
            text-align: center;
            transition: var(--transition);
            border: 1px solid var(--border-mist);
            cursor: pointer;
        }

        .category-card:hover {
            transform: translateY(-8px);
            border-color: var(--accent-brass);
            box-shadow: var(--shadow-hover);
        }

        .category-card i {
            font-size: 36px;
            color: var(--accent-clay);
            margin-bottom: 14px;
        }

        .category-card h4 {
            font-weight: 600;
            font-size: 1rem;
        }

        /* Products grid — clean & airy */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 28px;
        }

        .product-tile {
            background: var(--bg-card);
            border-radius: var(--radius-md);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid var(--border-mist);
        }

        .product-tile:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
        }

        .product-img {
            width: 100%;
            height: 260px;
            object-fit: cover;
            display: block;
        }

        .product-details {
            padding: 18px 16px 12px;
        }

        .product-title {
            font-weight: 600;
            font-size: 1rem;
        }

        .product-category {
            font-size: 0.7rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: var(--accent-clay);
            margin: 6px 0 8px;
        }

        .price-block {
            display: flex;
            align-items: baseline;
            gap: 8px;
            margin: 8px 0;
        }

        .price-current {
            font-weight: 700;
            font-size: 1.2rem;
        }

        .price-old {
            color: var(--text-soft);
            text-decoration: line-through;
            font-size: 0.8rem;
        }

        .stars {
            color: #E6B422;
            font-size: 0.75rem;
            letter-spacing: 1px;
        }

        .product-actions {
            display: flex;
            gap: 12px;
            padding: 0 16px 18px;
        }

        .cart-btn {
            flex: 1;
            background: var(--text-dark);
            color: white;
            border: none;
            border-radius: 40px;
            padding: 10px;
            font-weight: 500;
            cursor: pointer;
            transition: 0.2s;
        }

        .cart-btn:hover {
            background: var(--accent-brass);
        }

        /* Flash Sale — distinct */
        .flash-sale {
            background: #F2EBE2;
            border-radius: var(--radius-xl);
            margin: 56px 0;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 30px;
            padding: 40px 44px;
        }

        .sale-icon {
            flex: 0.7;
            text-align: center;
        }

        .sale-icon i {
            font-size: 110px;
            color: var(--accent-clay);
        }

        .sale-content {
            flex: 1.5;
        }

        .timer-block {
            display: flex;
            gap: 18px;
            margin: 24px 0;
        }

        .time-unit {
            background: white;
            padding: 12px 18px;
            border-radius: 20px;
            text-align: center;
            min-width: 70px;
            border: 1px solid var(--border-mist);
        }

        .time-number {
            font-size: 28px;
            font-weight: 700;
            font-family: monospace;
        }

        /* Testimonials */
        .testimonial-slider {
            display: flex;
            gap: 24px;
            overflow-x: auto;
            padding-bottom: 12px;
        }

        .testimonial-item {
            min-width: 320px;
            background: white;
            border-radius: 28px;
            padding: 28px;
            border: 1px solid var(--border-mist);
        }

        /* Newsletter */
        .newsletter-section {
            background: #2C3A3A;
            color: #F2E8DF;
            border-radius: 32px;
            padding: 56px 40px;
            text-align: center;
            margin: 48px 0;
        }

        .newsletter-section input {
            background: rgba(255, 255, 245, 0.12);
            border: 1px solid rgba(197, 160, 89, 0.4);
            padding: 14px 22px;
            border-radius: 60px;
            width: 280px;
            color: white;
            font-family: inherit;
        }

        .newsletter-section button {
            background: var(--accent-brass);
            color: #2C3A3A;
            border: none;
            padding: 14px 30px;
            border-radius: 60px;
            font-weight: bold;
            margin-left: 8px;
        }

        footer {
            border-top: 1px solid var(--border-mist);
            padding: 48px 0 32px;
            margin-top: 32px;
        }

        @media (max-width: 1100px) {
            .cat-grid { grid-template-columns: repeat(3,1fr); }
            .products-grid { grid-template-columns: repeat(2,1fr); }
        }
        @media (max-width: 780px) {
            .nav-links { display: none; }
            .mobile-toggle { display: block; }
            .products-grid { grid-template-columns: 1fr; }
            .cat-grid { grid-template-columns: repeat(2,1fr); }
            .hero-text h1 { font-size: 44px; }
            .container { padding: 0 20px; }
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 20px;">
            <button class="mobile-toggle" id="mobileMenuBtn"><i class="fas fa-gem"></i></button>
            <a href="#" class="logo">VELORIA<span>.</span></a>
        </div>
        <ul class="nav-links">
            <li><a href="#">EDITIONS</a></li>
            <li><a href="#">OBJECTS</a></li>
            <li><a href="#">APPAREL</a></li>
            <li><a href="#" id="flashNavLink">ATELIER</a></li>
        </ul>
        <div style="display: flex; gap: 14px; align-items: center;">
            <div class="search-bar">
                <i class="fas fa-search" style="color: var(--accent-brass);"></i>
                <input type="text" id="searchInput" placeholder="Search...">
            </div>
            <button class="icon-circle"><i class="far fa-user"></i></button>
            <div class="cart-badge" id="cartIcon">
                <i class="fas fa-bag-shopping"></i>
                <span class="cart-count" id="cartCount">0</span>
            </div>
        </div>
    </div>
    <div id="mobileNavPanel" style="display: none; background: white; border-top: 1px solid var(--border-mist); padding: 20px 24px;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 14px;">
            <li><a href="#">Home</a></li><li><a href="#">Collections</a></li><li><a href="#">Archive</a></li><li><a href="#saleSection">The Atelier</a></li>
        </ul>
    </div>
</header>

<main>
    <div class="container">
        <!-- Hero -->
        <div class="hero-grid">
            <div class="hero-text">
                <h1>Objects of permanence</h1>
                <p>Curated goods that honor slowness, craft, and authentic materials. Discover the new arrivals.</p>
                <div class="btn-group">
                    <button class="btn btn-primary" id="shopHeroBtn">Explore collection <i class="fas fa-arrow-right"></i></button>
                    <button class="btn btn-secondary" id="lookbookBtn">Lookbook</button>
                </div>
            </div>
            <div class="hero-visual">
                <i class="fas fa-vase"></i>
            </div>
        </div>

        <!-- Categories -->
        <div class="section-header">
            <h2>Curated departments</h2>
            <p>By material, form & function</p>
        </div>
        <div class="cat-grid" id="categoryGrid"></div>

        <!-- Products -->
        <div class="section-header">
            <h2>New arrivals</h2>
            <p>Handpicked for the discerning</p>
        </div>
        <div class="products-grid" id="productsGrid"></div>

        <!-- Flash sale section -->
        <div id="saleSection" class="flash-sale">
            <div class="sale-icon"><i class="fas fa-hourglass-start"></i></div>
            <div class="sale-content">
                <h2 style="font-family: 'Playfair Display'; font-size: 38px;">The Atelier Drop</h2>
                <p>Limited series: hand-finished leather goods & stoneware — 48h only.</p>
                <div class="timer-block">
                    <div class="time-unit"><div class="time-number" id="dealDays">0</div><div>DAYS</div></div>
                    <div class="time-unit"><div class="time-number" id="dealHours">00</div><div>HRS</div></div>
                    <div class="time-unit"><div class="time-number" id="dealMinutes">00</div><div>MIN</div></div>
                    <div class="time-unit"><div class="time-number" id="dealSeconds">00</div><div>SEC</div></div>
                </div>
                <div style="display: flex; align-items: baseline; gap: 15px; margin: 12px 0;">
                    <span style="font-size: 32px; font-weight: 700;">$749</span>
                    <span style="text-decoration: line-through; color: var(--text-soft);">$1,120</span>
                    <span style="background: var(--accent-clay); color: white; border-radius: 30px; padding: 4px 14px;">−33%</span>
                </div>
                <button class="btn btn-primary" id="flashDealBtn">Reserve piece →</button>
            </div>
        </div>

        <!-- Testimonials -->
        <div class="section-header">
            <h2>In the words of collectors</h2>
            <p>Trusted by aesthetes worldwide</p>
        </div>
        <div class="testimonial-slider" id="testimonialContainer"></div>

        <!-- Newsletter -->
        <div class="newsletter-section">
            <i class="fas fa-feather-alt" style="font-size: 36px; margin-bottom: 12px; opacity: 0.9;"></i>
            <h3 style="font-family: 'Playfair Display'; font-size: 32px;">The Veloria chronicle</h3>
            <p style="margin: 12px 0 24px;">Early access, artisan interviews & private sales.</p>
            <form id="newsletterForm" style="display: flex; gap: 12px; justify-content: center; flex-wrap: wrap;">
                <input type="email" id="newsEmail" placeholder="your@email.com" required>
                <button type="submit">Subscribe</button>
            </form>
            <div id="newsMsg" style="margin-top: 16px; font-size: 13px;"></div>
        </div>
    </div>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 40px;">
        <div><div class="logo" style="font-size: 24px;">VELORIA</div><div style="margin-top: 12px; max-width: 220px; color: var(--text-soft);">Slow luxury, modern soul.</div></div>
        <div><strong>Studio</strong><div style="margin-top: 8px;">Journal<br>Concierge</div></div>
        <div><strong>Policies</strong><div>Shipping<br>Returns</div></div>
        <div><i class="fab fa-instagram"></i> <i class="fab fa-pinterest"></i> <i class="fab fa-x-twitter"></i></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 48px; font-size: 12px; color: var(--text-soft);">© <span id="yearSpan"></span> VELORIA — all rights reserved</div>
</footer>

<script>
    // Updated categories & products (fresh data)
    const CATEGORY_DATA = [
        { id: 'furnishings', name: 'Furnishings', icon: 'fa-couch' },
        { id: 'ceramics', name: 'Ceramics', icon: 'fa-mug-hot' },
        { id: 'textiles', name: 'Textiles', icon: 'fa-feather' },
        { id: 'jewelry', name: 'Jewelry', icon: 'fa-gem' },
        { id: 'apothecary', name: 'Apothecary', icon: 'fa-seedling' },
        { id: 'objets', name: 'Objets', icon: 'fa-crown' }
    ];

    const PRODUCT_LIST = [
        { id: 201, title: "Terra Vase", price: 185, oldPrice: null, rating: 5, reviews: 47, img: "https://images.unsplash.com/photo-1578749556568-bc2c40e68b61?w=600&auto=format", category: "Ceramics" },
        { id: 202, title: "Linen Bouclé Throw", price: 229, oldPrice: 310, rating: 4, reviews: 28, img: "https://images.unsplash.com/photo-1618354691373-d851c5c3a990?w=600&auto=format", category: "Textiles" },
        { id: 203, title: "Brass Candle Holder", price: 89, oldPrice: 120, rating: 5, reviews: 93, img: "https://images.unsplash.com/photo-1606761568499-6d2451b23c66?w=600&auto=format", category: "Objets" },
        { id: 204, title: "Handwoven Tote", price: 149, rating: 5, reviews: 61, img: "https://images.unsplash.com/photo-1590874103328-eac38a683ce7?w=600&auto=format", category: "Textiles" },
        { id: 205, title: "Moonphase Necklace", price: 279, oldPrice: 420, rating: 5, reviews: 34, img: "https://images.unsplash.com/photo-1515562141207-7a88fb7ce338?w=600&auto=format", category: "Jewelry" },
        { id: 206, title: "Incense Ritual Set", price: 64, rating: 4, reviews: 112, img: "https://images.unsplash.com/photo-1611801412195-0c5b704bcec3?w=600&auto=format", category: "Apothecary" },
        { id: 207, title: "Oak Credenza", price: 1890, oldPrice: 2250, rating: 5, reviews: 19, img: "https://images.unsplash.com/photo-1551298370-9d3d53740c6c?w=600&auto=format", category: "Furnishings" },
        { id: 208, title: "Glazed Mug Set", price: 78, rating: 5, reviews: 205, img: "https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?w=600&auto=format", category: "Ceramics" }
    ];

    let cartTotal = 0;
    const cartCountSpan = document.getElementById('cartCount');
    const searchField = document.getElementById('searchInput');

    // Render categories
    function renderCategories() {
        const grid = document.getElementById('categoryGrid');
        if (!grid) return;
        grid.innerHTML = '';
        CATEGORY_DATA.forEach(c => {
            const card = document.createElement('div');
            card.className = 'category-card';
            card.innerHTML = `<i class="fas ${c.icon}"></i><h4>${c.name}</h4><div style="font-size: 12px; color: var(--text-soft);">shop</div>`;
            card.addEventListener('click', () => {
                searchField.value = c.name;
                filterProducts(c.name);
                document.querySelector('.products-grid').scrollIntoView({ behavior: 'smooth' });
            });
            grid.appendChild(card);
        });
    }

    function filterProducts(query) {
        const q = query.trim().toLowerCase();
        if (!q) renderProducts(PRODUCT_LIST);
        else {
            const filtered = PRODUCT_LIST.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
            renderProducts(filtered);
        }
    }

    function renderProducts(productsArray) {
        const container = document.getElementById('productsGrid');
        if (!container) return;
        container.innerHTML = '';
        productsArray.forEach(p => {
            const productDiv = document.createElement('div');
            productDiv.className = 'product-tile';
            productDiv.innerHTML = `
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-details">
                    <div class="product-title">${escapeHtml(p.title)}</div>
                    <div class="product-category">${p.category}</div>
                    <div class="price-block">
                        <span class="price-current">$${p.price}</span>
                        ${p.oldPrice ? `<span class="price-old">$${p.oldPrice}</span>` : ''}
                    </div>
                    <div class="stars">${'★'.repeat(p.rating)}${p.rating < 5 ? '☆' : ''} (${p.reviews})</div>
                </div>
                <div class="product-actions">
                    <button class="cart-btn" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> Add</button>
                    <button class="icon-circle" style="border:1px solid var(--border-mist);"><i class="far fa-heart"></i></button>
                </div>
            `;
            container.appendChild(productDiv);
        });
        document.querySelectorAll('.cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCartById(id);
            });
        });
    }

    function addToCartById(productId) {
        const found = PRODUCT_LIST.find(p => p.id === productId);
        if (found) {
            cartTotal++;
            cartCountSpan.innerText = cartTotal;
            const btn = document.querySelector(`.cart-btn[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = '<i class="fas fa-check"></i> Added';
                setTimeout(() => btn.innerHTML = original, 1000);
            }
        }
    }

    // Timer setup
    function initTimer() {
        const target = new Date();
        target.setDate(target.getDate() + 2);
        target.setHours(20, 0, 0, 0);
        const update = () => {
            const diff = target - new Date();
            if (diff <= 0) {
                document.getElementById('dealDays').innerText = '0';
                return;
            }
            const days = Math.floor(diff / 86400000);
            const hours = Math.floor((diff % 86400000) / 3600000);
            const mins = Math.floor((diff % 3600000) / 60000);
            const secs = Math.floor((diff % 60000) / 1000);
            document.getElementById('dealDays').innerText = days;
            document.getElementById('dealHours').innerText = String(hours).padStart(2, '0');
            document.getElementById('dealMinutes').innerText = String(mins).padStart(2, '0');
            document.getElementById('dealSeconds').innerText = String(secs).padStart(2, '0');
        };
        update();
        setInterval(update, 1000);
    }

    // Testimonials data
    const testimonialsData = [
        { name: "Sophia L.", text: "The curation is sublime — each piece arrives like a gift.", rating: 5, icon: "fa-user-circle" },
        { name: "Marcus V.", text: "Exceptional quality and customer care. Will return.", rating: 5, icon: "fa-user-astronaut" },
        { name: "Elena R.", text: "I appreciate the emphasis on craftsmanship. The vase is stunning.", rating: 4, icon: "fa-user-ninja" }
    ];
    function renderTestimonials() {
        const container = document.getElementById('testimonialContainer');
        if (!container) return;
        container.innerHTML = testimonialsData.map(t => `
            <div class="testimonial-item">
                <div class="stars">${'★'.repeat(t.rating)}</div>
                <p style="margin: 14px 0;">“${t.text}”</p>
                <div style="display: flex; align-items: center; gap: 10px;"><i class="fas ${t.icon}" style="font-size: 32px; color: var(--accent-brass);"></i><strong>${t.name}</strong></div>
            </div>
        `).join('');
    }

    // Newsletter
    document.getElementById('newsletterForm')?.addEventListener('submit', (e) => {
        e.preventDefault();
        const email = document.getElementById('newsEmail').value.trim();
        const msgDiv = document.getElementById('newsMsg');
        if (!email.includes('@')) msgDiv.innerText = 'valid email required';
        else { msgDiv.innerText = '✓ welcome to the inner circle'; msgDiv.style.color = '#C5A059'; document.getElementById('newsEmail').value = ''; setTimeout(() => msgDiv.innerText = '', 2800); }
    });

    // Flash deal button
    document.getElementById('flashDealBtn')?.addEventListener('click', () => { cartTotal++; cartCountSpan.innerText = cartTotal; alert('Added The Atelier piece to cart.'); });
    document.getElementById('shopHeroBtn')?.addEventListener('click', () => document.querySelector('.products-grid').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('lookbookBtn')?.addEventListener('click', () => alert('Lookbook SS25 — coming soon.'));
    document.getElementById('flashNavLink')?.addEventListener('click', (e) => { e.preventDefault(); document.getElementById('saleSection').scrollIntoView({ behavior: 'smooth' }); });
    document.getElementById('mobileMenuBtn')?.addEventListener('click', () => { const panel = document.getElementById('mobileNavPanel'); panel.style.display = panel.style.display === 'none' ? 'block' : 'none'; });
    if (searchField) searchField.addEventListener('keypress', (e) => { if (e.key === 'Enter') filterProducts(searchField.value); });

    function escapeHtml(str) { return String(str).replace(/[&<>]/g, function(m) { if (m === '&') return '&amp;'; if (m === '<') return '&lt;'; if (m === '>') return '&gt;'; return m; }); }

    function init() {
        renderCategories();
        renderProducts(PRODUCT_LIST);
        initTimer();
        renderTestimonials();
        document.getElementById('yearSpan').innerText = new Date().getFullYear();
    }
    init();
</script>
</body>
</html>
