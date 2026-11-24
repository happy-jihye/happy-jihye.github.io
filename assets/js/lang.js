(function () {
  var root = document.documentElement;
  var buttons = document.querySelectorAll('[data-set-lang]');

  function current() { return root.classList.contains('lang-ko') ? 'ko' : 'en'; }

  function sync() {
    var l = current();
    buttons.forEach(function (b) { b.setAttribute('aria-pressed', String(b.dataset.setLang === l)); });
  }

  function setLang(l) {
    root.classList.remove('lang-en', 'lang-ko');
    root.classList.add('lang-' + l);
    root.lang = l;
    try { localStorage.setItem('lang', l); } catch (e) {}
    sync();
  }

  buttons.forEach(function (b) {
    b.addEventListener('click', function () { setLang(b.dataset.setLang); });
  });
  sync();
})();
