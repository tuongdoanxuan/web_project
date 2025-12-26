document.addEventListener('DOMContentLoaded', function() {
    initModal();
    generateCSRFToken();
});

function initModal() {
    const urlParams = new URLSearchParams(window.location.search);
    const showModal = urlParams.get('showModal');
    
    if (showModal === 'login') {
        showLoginModal();
    } else if (showModal === 'register') {
        showRegisterModal();
    } else if (showModal === 'forgot') {
        showForgotPasswordModal();
    }
}

function generateCSRFToken() {
    const csrfToken = document.querySelector('input[name="csrfToken"]');
    if (csrfToken && (!csrfToken.value || csrfToken.value === '')) {
        fetch(window.location.pathname)
            .then(function() {
                location.reload();
            });
    }
}

function showLoginModal() {
    const modal = document.getElementById('authModal');
    const loginForm = document.querySelector('.login-form');
    const registerForm = document.querySelector('.register-form');
    const forgotForm = document.querySelector('.forgot-form');
    
    if (modal && loginForm) {
        modal.classList.add('active');
        loginForm.classList.add('active');
        if (registerForm) registerForm.classList.remove('active');
        if (forgotForm) forgotForm.classList.remove('active');
        
        document.body.style.overflow = 'hidden';
        updateURL('login'); // Add URL parameter
    }
}

function showRegisterModal() {
    const modal = document.getElementById('authModal');
    const loginForm = document.querySelector('.login-form');
    const registerForm = document.querySelector('.register-form');
    const forgotForm = document.querySelector('.forgot-form');
    
    if (modal && registerForm) {
        modal.classList.add('active');
        registerForm.classList.add('active');
        if (loginForm) loginForm.classList.remove('active');
        if (forgotForm) forgotForm.classList.remove('active');
        
        document.body.style.overflow = 'hidden';
        updateURL('register'); // Add URL parameter
    }
}

function showForgotPasswordModal() {
    const modal = document.getElementById('authModal');
    const loginForm = document.querySelector('.login-form');
    const registerForm = document.querySelector('.register-form');
    const forgotForm = document.querySelector('.forgot-form');
    
    if (modal && forgotForm) {
        modal.classList.add('active');
        forgotForm.classList.add('active');
        if (loginForm) loginForm.classList.remove('active');
        if (registerForm) registerForm.classList.remove('active');
        
        document.body.style.overflow = 'hidden';
        updateURL('forgot'); // Add URL parameter
    }
}

function closeModal() {
    const modal = document.getElementById('authModal');
    const loginForm = document.querySelector('.login-form');
    const registerForm = document.querySelector('.register-form');
    const forgotForm = document.querySelector('.forgot-form');
    
    if (modal) {
        modal.classList.remove('active');
        if (loginForm) loginForm.classList.remove('active');
        if (registerForm) registerForm.classList.remove('active');
        if (forgotForm) forgotForm.classList.remove('active');
        
        document.body.style.overflow = '';
        
        const url = new URL(window.location);
        url.searchParams.delete('showModal');
        url.searchParams.delete('error');
        url.searchParams.delete('resetSuccess');
        window.history.replaceState({}, '', url);
    }
}

function switchToLogin() {
    showLoginModal();
    updateURL('login');
}

function switchToRegister() {
    showRegisterModal();
    updateURL('register');
}

function switchToForgotPassword() {
    showForgotPasswordModal();
    updateURL('forgot');
}

function updateURL(modalType) {
    const url = new URL(window.location);
    url.searchParams.set('showModal', modalType);
    url.searchParams.delete('error');
    url.searchParams.delete('resetSuccess');
    window.history.pushState({}, '', url);
}

document.addEventListener('keydown', function(event) {
    if (event.key === 'Escape') {
        closeModal();
    }
});
