<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
    <title>KiddoWonder — magical shop for little explorers</title>
    
    <!-- Fonts: playful rounded sans -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;600;700&family=Fredoka+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* KID-FRIENDLY COLOR PALETTE: bubblegum, sky blue, sunny yellow, soft mint */
        :root {
            --bg-warm: #FFF9F0;
            --bg-card: #FFFFFF;
            --text-dark: #2D3E50;
            --text-soft: #6B7F8C;
            --primary-sun: #FFB347;    /* warm orange */
            --primary-sky: #6CC3E8;    /* cheerful blue */
            --accent-mint: #A8E6CF;
            --accent-coral: #FF8A7A;
            --border-playful: #FFE0B5;
            --shadow-play: 0 12px 24px rgba(255, 180, 70, 0.15);
            --shadow-hover: 0 20px 30px rgba(108, 195, 232, 0.2);
            --radius-xl: 40px;
            --radius-lg: 28px;
            --radius-md: 20px;
            --transition: all 0.3s cubic-bezier(0.34, 1.2, 0.64, 1);
        }

        body {
            background: var(--bg-warm);
            color: var(--text-dark);
            font-family: 'Quicksand', sans-serif;
            line-height: 1.45;
            font-weight: 500;
        }

        h1, h2, h3, .fun-title {
            font-family: 'Fredoka One', cursive;
            letter-spacing: 1px;
            font-weight: 400;
        }

        .container {
            max-width: 1300px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* Header — friendly & sticky */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 249, 240, 0.95);
            backdrop-filter: blur(12px);
            border-bottom: 3px solid var(--primary-sun);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 14px 0;
        }

        .logo {
            font-family: 'Fredoka One', cursive;
            font-size: 28px;
            background: linear-gradient(135deg, #FFB347 0%, #FF8A7A 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            text-decoration: none;
        }

        .logo span {
            background: none;
            color: var(--primary-sky);
            -webkit-background-clip: unset;
        }

        .nav-links {
            display: flex;
            gap: 28px;
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            font-weight: 600;
            font-size: 1rem;
            color: var(--text-dark);
            transition: var(--transition);
            padding: 6px 12px;
            border-radius: 40px;
        }

        .nav-links a:hover {
            background: var(--primary-sun);
            color: white;
        }

        .search-bar {
            background: white;
            border-radius: 60px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            gap: 10px;
            border: 2px solid var(--border-playful);
            transition: var(--transition);
        }

        .search-bar:focus-within {
            border-color: var(--primary-sky);
            box-shadow: 0 0 0 3px rgba(108, 195, 232, 0.3);
        }

        .search-bar input {
            border: none;
            background: transparent;
            outline: none;
            width: 180px;
            font-size: 0.9rem;
            font-family: 'Quicksand', sans-serif;
        }

        .icon-circle {
            background: white;
            border: 2px solid var(--border-playful);
            font-size: 1.2rem;
            cursor: pointer;
            width: 42px;
            height: 42px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            transition: var(--transition);
            color: var(--primary-sun);
        }

        .icon-circle:hover {
            background: var(--primary-sky);
            border-color: var(--primary-sky);
            color: white;
            transform: scale(1.05);
        }

        .cart-badge {
            position: relative;
            cursor: pointer;
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: var(--accent-coral);
            color: white;
            font-size: 11px;
            font-weight: bold;
            width: 20px;
            height: 20px;
            border-radius: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: monospace;
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 1.8rem;
            cursor: pointer;
            color: var(--primary-sun);
        }

        /* Hero — whimsical illustration style */
        .hero-play {
            margin: 32px 0 48px;
            background: linear-gradient(125deg, #FFE8D4 0%, #FFD9B5 100%);
            border-radius: var(--radius-xl);
            padding: 48px 40px;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 40px;
            border: 3px solid white;
            box-shadow: var(--shadow-play);
        }

        .hero-text h1 {
            font-size: 56px;
            color: #2D3E50;
            margin-bottom: 16px;
        }

        .hero-text p {
            font-size: 1.1rem;
            color: #5A6E7A;
            max-width: 480px;
            margin-bottom: 28px;
        }

        .btn {
            padding: 12px 32px;
            border-radius: 60px;
            font-weight: 700;
            font-size: 1rem;
            cursor: pointer;
            transition: var(--transition);
            border: none;
            font-family: 'Quicksand', sans-serif;
        }

        .btn-primary {
            background: var(--primary-sun);
            color: white;
            box-shadow: 0 6px 0 #D9892E;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 0 #D9892E;
        }

        .btn-secondary {
            background: var(--primary-sky);
            color: white;
            box-shadow: 0 6px 0 #4A9FC7;
            margin-left: 12px;
        }

        .hero-visual i {
            font-size: 130px;
            filter: drop-shadow(8px 8px 0 rgba(255, 180, 70, 0.3));
            color: #FFD966;
        }

        /* Categories */
        .section-header {
            margin: 48px 0 24px;
        }

        .section-header h2 {
            font-size: 42px;
            display: inline-block;
            background: linear-gradient(120deg, #FFB347, #FF8A7A);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        .cat-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 20px;
            margin: 32px 0;
        }

        .category-card {
            background: var(--bg-card);
            border-radius: var(--radius-lg);
            padding: 24px 12px;
            text-align: center;
            cursor: pointer;
            border: 3px solid var(--border-playful);
            transition: var(--transition);
            box-shadow: 0 8px 0 #FFE0B5;
        }

        .category-card:hover {
            transform: translateY(-5px);
            border-color: var(--primary-sky);
            box-shadow: 0 12px 0 #FFE0B5;
        }

        .category-card i {
            font-size: 44px;
            color: var(--primary-sun);
            margin-bottom: 12px;
        }

        .category-card h4 {
            font-size: 1rem;
            font-weight: 700;
        }

        /* Products grid — cute & kid-friendly images */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 28px;
            margin: 32px 0;
        }

        .product-tile {
            background: var(--bg-card);
            border-radius: var(--radius-md);
            overflow: hidden;
            border: 3px solid var(--border-playful);
            transition: var(--transition);
            box-shadow: 0 8px 0 rgba(255, 200, 140, 0.3);
        }

        .product-tile:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-hover);
            border-color: var(--primary-sky);
        }

        .product-img {
            width: 100%;
            height: 210px;
            object-fit: cover;
            background: #FFF2E0;
        }

        .product-details {
            padding: 16px;
        }

        .product-title {
            font-weight: 700;
            font-size: 1.1rem;
        }

        .price-current {
            font-weight: 800;
            font-size: 1.3rem;
            color: var(--primary-sun);
            display: inline-block;
            margin: 8px 0;
        }

        .cart-btn {
            width: 100%;
            background: var(--primary-sky);
            color: white;
            border: none;
            border-radius: 60px;
            padding: 10px;
            font-weight: 700;
            cursor: pointer;
            transition: 0.2s;
            font-family: 'Quicksand', sans-serif;
        }

        .cart-btn:hover {
            background: var(--primary-sun);
            transform: scale(0.98);
        }

        /* Payment Modal (kid-friendly) */
        .payment-modal {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            backdrop-filter: blur(6px);
            z-index: 1000;
            align-items: center;
            justify-content: center;
        }

        .payment-container {
            background: white;
            max-width: 520px;
            width: 90%;
            border-radius: 48px;
            padding: 32px;
            border: 4px solid var(--primary-sun);
            box-shadow: 0 20px 40px rgba(0,0,0,0.2);
            animation: bounceIn 0.4s ease;
        }

        @keyframes bounceIn {
            0% { transform: scale(0.9); opacity: 0; }
            100% { transform: scale(1); opacity: 1; }
        }

        .payment-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .close-modal {
            background: none;
            border: none;
            font-size: 32px;
            cursor: pointer;
            color: var(--accent-coral);
        }

        .cart-items-list {
            max-height: 250px;
            overflow-y: auto;
            margin: 16px 0;
        }

        .cart-item {
            display: flex;
            justify-content: space-between;
            padding: 12px 0;
            border-bottom: 2px dotted var(--border-playful);
        }

        .total-row {
            display: flex;
            justify-content: space-between;
            padding: 16px 0;
            font-weight: 800;
            font-size: 1.3rem;
            border-top: 3px solid var(--primary-sun);
        }

        .payment-form input {
            width: 100%;
            padding: 14px;
            margin: 8px 0;
            border: 2px solid var(--border-playful);
            border-radius: 60px;
            font-family: 'Quicksand', sans-serif;
        }

        .pay-btn {
            width: 100%;
            background: var(--accent-mint);
            color: var(--text-dark);
            padding: 14px;
            font-weight: 800;
            border: none;
            border-radius: 60px;
            margin-top: 16px;
            cursor: pointer;
            font-size: 1.1rem;
        }

        .payment-status {
            margin-top: 12px;
            padding: 10px;
            border-radius: 30px;
            text-align: center;
            display: none;
        }

        footer {
            background: #FFE8D4;
            margin-top: 48px;
            padding: 32px;
            text-align: center;
            border-radius: 40px 40px 0 0;
        }

        @media (max-width: 1100px) {
            .cat-grid { grid-template-columns: repeat(3,1fr); }
            .products-grid { grid-template-columns: repeat(2,1fr); }
        }
        @media (max-width: 780px) {
            .nav-links { display: none; }
            .mobile-toggle { display: block; }
            .products-grid { grid-template-columns: 1fr; }
            .hero-text h1 { font-size: 38px; }
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 16px;">
            <button class="mobile-toggle" id="mobileMenuBtn"><i class="fas fa-candy-cane"></i></button>
            <a href="#" class="logo">KiddoWonder<span>✦</span></a>
        </div>
        <ul class="nav-links">
            <li><a href="#">✨ TOYS</a></li>
            <li><a href="#">📚 BOOKS</a></li>
            <li><a href="#">🎨 CRAFTS</a></li>
            <li><a href="#">🧸 PLUSHIES</a></li>
        </ul>
        <div style="display: flex; gap: 12px; align-items: center;">
            <div class="search-bar">
                <i class="fas fa-search" style="color: var(--primary-sun);"></i>
                <input type="text" id="searchInput" placeholder="Search unicorns, puzzles...">
            </div>
            <button class="icon-circle"><i class="far fa-smile-wink"></i></button>
            <div class="cart-badge" id="cartIcon">
                <i class="fas fa-gift"></i>
                <span class="cart-count" id="cartCount">0</span>
            </div>
        </div>
    </div>
    <div id="mobileNavPanel" style="display: none; background: white; border-top: 3px solid var(--primary-sun); padding: 20px;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 12px;">
            <li><a href="#">Toys</a></li><li><a href="#">Books</a></li><li><a href="#">Crafts</a></li><li><a href="#">Plushies</a></li>
        </ul>
    </div>
</header>

<main>
    <div class="container">
        <!-- Hero -->
        <div class="hero-play">
            <div class="hero-text">
                <h1>Wonderland awaits! 🎈</h1>
                <p>Toys, books & magical adventures — handpicked for happy little hearts.</p>
                <div>
                    <button class="btn btn-primary" id="shopHeroBtn">✨ Shop now</button>
                    <button class="btn btn-secondary" id="surpriseBtn">🎁 Surprise me!</button>
                </div>
            </div>
            <div class="hero-visual">
                <i class="fas fa-dragon"></i>
            </div>
        </div>

        <!-- Categories -->
        <div class="section-header">
            <h2>⭐ Playful departments</h2>
        </div>
        <div class="cat-grid" id="categoryGrid"></div>

        <!-- Products -->
        <div class="section-header">
            <h2>🧸 Trending for tiny hands</h2>
        </div>
        <div class="products-grid" id="productsGrid"></div>
    </div>
</main>

<!-- KID-FRIENDLY PAYMENT MODAL -->
<div id="paymentModal" class="payment-modal">
    <div class="payment-container">
        <div class="payment-header">
            <h3 style="font-family: 'Fredoka One';">🎒 Your treasure box</h3>
            <button class="close-modal" id="closeModalBtn">&times;</button>
        </div>
        <div id="cartPreview"></div>
        <form id="paymentForm">
            <div class="payment-form">
                <input type="text" id="cardName" placeholder="🧸 Grown-up's name" required>
                <input type="text" id="cardNumber" placeholder="💳 Card number" maxlength="19" required>
                <div style="display: flex; gap: 12px;">
                    <input type="text" id="cardExpiry" placeholder="MM/YY" maxlength="5" required style="flex:1">
                    <input type="text" id="cardCvv" placeholder="CVV" maxlength="4" required style="flex:1">
                </div>
                <input type="email" id="cardEmail" placeholder="📧 Parent's email for receipt" required>
            </div>
            <div id="paymentStatus" class="payment-status"></div>
            <button type="submit" class="pay-btn" id="confirmPaymentBtn">🐣 Pay safely • <span id="modalTotal">$0</span></button>
        </form>
        <p style="font-size: 12px; text-align: center; margin-top: 12px;">✨ 100% magic protected ✨</p>
    </div>
</div>

<footer>
    <div class="container">
        <p>⭐ KiddoWonder — where imagination grows ⭐</p>
        <p style="margin-top: 12px; font-size: 13px;">© <span id="yearSpan"></span> Made with 🧸 for little dreamers</p>
    </div>
</footer>

<script>
    // KID-FRIENDLY PRODUCTS with adorable images (unsplash kids / toys)
    const PRODUCTS = [
        { id: 1, title: "Rainbow Unicorn Plush", price: 24, img: "https://images.unsplash.com/photo-1592840496694-26d035b52b9b?w=600&auto=format", category: "Plushies" },
        { id: 2, title: "Wooden Building Blocks", price: 32, img: "https://images.unsplash.com/photo-1596461404969-9ae70f2830c1?w=600&auto=format", category: "Toys" },
        { id: 3, title: "Dinosaur Puzzle 100pc", price: 18, img: "https://images.unsplash.com/photo-1587654780291-39c9404d746b?w=600&auto=format", category: "Toys" },
        { id: 4, title: "Magic Painting Set", price: 15, img: "https://images.unsplash.com/photo-1513364776144-60967b0f800f?w=600&auto=format", category: "Crafts" },
        { id: 5, title: "Storybook: Dragon Tales", price: 12, img: "https://images.unsplash.com/photo-1512820790803-83ca734da794?w=600&auto=format", category: "Books" },
        { id: 6, title: "Starry Nightlight", price: 28, img: "https://images.unsplash.com/photo-1595959183082-7b5709f06f6c?w=600&auto=format", category: "Toys" },
        { id: 7, title: "Bunny Backpack", price: 35, img: "https://images.unsplash.com/photo-1590874103328-eac38a683ce7?w=600&auto=format", category: "Plushies" },
        { id: 8, title: "Play-Doh Kit", price: 22, img: "https://images.unsplash.com/photo-1611371799658-487e7d7c4cf9?w=600&auto=format", category: "Crafts" }
    ];

    const CATEGORIES = [
        { name: "Toys", icon: "fa-rocket" }, { name: "Books", icon: "fa-book-open" },
        { name: "Crafts", icon: "fa-paintbrush" }, { name: "Plushies", icon: "fa-heart" },
        { name: "Games", icon: "fa-puzzle-piece" }, { name: "Art", icon: "fa-crayon" }
    ];

    let cart = []; // { id, title, price, quantity }
    const cartCountSpan = document.getElementById('cartCount');
    const productsGrid = document.getElementById('productsGrid');
    const categoryGrid = document.getElementById('categoryGrid');
    const searchInput = document.getElementById('searchInput');
    const paymentModal = document.getElementById('paymentModal');
    const cartPreview = document.getElementById('cartPreview');
    const modalTotalSpan = document.getElementById('modalTotal');
    const closeModalBtn = document.getElementById('closeModalBtn');
    const paymentForm = document.getElementById('paymentForm');
    const cartIcon = document.getElementById('cartIcon');

    function updateCartUI() {
        const totalItems = cart.reduce((sum, item) => sum + item.quantity, 0);
        cartCountSpan.innerText = totalItems;
        localStorage.setItem('kiddo_cart', JSON.stringify(cart));
    }

    function addToCart(productId) {
        const product = PRODUCTS.find(p => p.id === productId);
        if (!product) return;
        const existing = cart.find(item => item.id === productId);
        if (existing) existing.quantity++;
        else cart.push({ id: product.id, title: product.title, price: product.price, quantity: 1 });
        updateCartUI();
        const btn = document.querySelector(`.cart-btn[data-id="${productId}"]`);
        if (btn) {
            const original = btn.innerHTML;
            btn.innerHTML = '🎉 Added!';
            setTimeout(() => btn.innerHTML = original, 1000);
        }
    }

    function renderProducts(filter = "") {
        const filtered = PRODUCTS.filter(p => 
            p.title.toLowerCase().includes(filter.toLowerCase()) || 
            p.category.toLowerCase().includes(filter.toLowerCase())
        );
        productsGrid.innerHTML = filtered.map(p => `
            <div class="product-tile">
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-details">
                    <div class="product-title">${escapeHtml(p.title)}</div>
                    <div style="color:var(--primary-sky); font-weight:600;">${p.category}</div>
                    <div class="price-current">$${p.price}</div>
                    <button class="cart-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to bag</button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.cart-btn').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                addToCart(id);
            });
        });
    }

    function renderCategories() {
        categoryGrid.innerHTML = CATEGORIES.map(c => `
            <div class="category-card" data-cat="${c.name}">
                <i class="fas ${c.icon}"></i>
                <h4>${c.name}</h4>
            </div>
        `).join('');
        document.querySelectorAll('.category-card').forEach(card => {
            card.addEventListener('click', () => {
                const catName = card.getAttribute('data-cat');
                searchInput.value = catName;
                renderProducts(catName);
            });
        });
    }

    // Payment modal logic
    function openPaymentModal() {
        if (cart.length === 0) {
            alert("🧸 Your treasure box is empty! Add some magical items first.");
            return;
        }
        const total = cart.reduce((sum, item) => sum + (item.price * item.quantity), 0);
        modalTotalSpan.innerText = `$${total.toFixed(2)}`;
        cartPreview.innerHTML = `
            <div class="cart-items-list">
                ${cart.map(item => `
                    <div class="cart-item">
                        <span>${escapeHtml(item.title)} x ${item.quantity}</span>
                        <span>$${(item.price * item.quantity).toFixed(2)}</span>
                    </div>
                `).join('')}
                <div class="total-row">
                    <span>🌟 Total</span>
                    <span>$${total.toFixed(2)}</span>
                </div>
            </div>
        `;
        paymentModal.style.display = 'flex';
    }

    function closePaymentModal() {
        paymentModal.style.display = 'none';
        document.getElementById('paymentStatus').style.display = 'none';
        paymentForm.reset();
    }

    function processPayment(event) {
        event.preventDefault();
        const cardName = document.getElementById('cardName').value.trim();
        const cardNumber = document.getElementById('cardNumber').value.trim();
        const expiry = document.getElementById('cardExpiry').value.trim();
        const cvv = document.getElementById('cardCvv').value.trim();
        const email = document.getElementById('cardEmail').value.trim();
        const statusDiv = document.getElementById('paymentStatus');

        if (!cardName || !cardNumber || !expiry || !cvv || !email) {
            statusDiv.style.display = 'block';
            statusDiv.style.background = '#FFE0D6';
            statusDiv.innerHTML = '🧸 Oops! Fill all fields, please.';
            return;
        }
        if (!/^\d{13,19}$/.test(cardNumber.replace(/\s/g, ''))) {
            statusDiv.style.display = 'block';
            statusDiv.innerHTML = '🔢 Card number needs 13-16 digits.';
            return;
        }
        statusDiv.style.display = 'block';
        statusDiv.style.background = '#D4F1F9';
        statusDiv.innerHTML = '✨ Processing your magical order... ✨';
        
        setTimeout(() => {
            statusDiv.innerHTML = `✅ Yay! Thanks ${cardName}. A unicorn receipt will fly to ${email}`;
            cart = [];
            updateCartUI();
            renderProducts(searchInput.value || "");
            setTimeout(() => {
                closePaymentModal();
                alert('🎉 Order confirmed! Your little one will be so happy! 🎉');
            }, 1800);
        }, 1500);
    }

    // Formatting
    document.getElementById('cardNumber')?.addEventListener('input', function(e) {
        let val = e.target.value.replace(/\s/g, '');
        if (val.length > 16) val = val.slice(0,16);
        e.target.value = val.replace(/(\d{4})/g, '$1 ').trim();
    });
    document.getElementById('cardExpiry')?.addEventListener('input', function(e) {
        let val = e.target.value.replace('/', '');
        if (val.length >= 2) val = val.slice(0,2) + '/' + val.slice(2,4);
        e.target.value = val.slice(0,5);
    });

    cartIcon.addEventListener('click', openPaymentModal);
    closeModalBtn.addEventListener('click', closePaymentModal);
    paymentForm.addEventListener('submit', processPayment);
    window.addEventListener('click', (e) => { if (e.target === paymentModal) closePaymentModal(); });
    document.getElementById('shopHeroBtn')?.addEventListener('click', () => document.querySelector('.products-grid').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('surpriseBtn')?.addEventListener('click', () => {
        const random = PRODUCTS[Math.floor(Math.random() * PRODUCTS.length)];
        alert(`🎁 Surprise! Add ${random.title} to your cart for magical fun! 🎁`);
        addToCart(random.id);
    });
    document.getElementById('mobileMenuBtn')?.addEventListener('click', () => {
        const panel = document.getElementById('mobileNavPanel');
        panel.style.display = panel.style.display === 'none' ? 'block' : 'none';
    });
    searchInput.addEventListener('keypress', (e) => { if (e.key === 'Enter') renderProducts(searchInput.value); });

    function escapeHtml(str) { return String(str).replace(/[&<>]/g, function(m){ if(m==='&') return '&amp;'; if(m==='<') return '&lt;'; if(m==='>') return '&gt;'; return m;}); }

    function loadCart() {
        const saved = localStorage.getItem('kiddo_cart');
        if (saved) { try { cart = JSON.parse(saved); updateCartUI(); } catch(e) { cart = []; } }
    }

    function init() {
        loadCart();
        renderCategories();
        renderProducts("");
        document.getElementById('yearSpan').innerText = new Date().getFullYear();
    }
    init();
</script>
</body>
</html>
