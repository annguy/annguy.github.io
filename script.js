document.getElementById('year').textContent = new Date().getFullYear();
const toggle = document.querySelector('.nav-toggle');
const links = document.querySelector('.nav-links');
toggle.addEventListener('click', () => {
  const open = links.classList.toggle('open');
  toggle.setAttribute('aria-expanded', open);
});
document.querySelectorAll('.nav-links a').forEach(a => a.addEventListener('click', () => links.classList.remove('open')));
document.querySelectorAll('[data-placeholder]').forEach(link => {
  link.addEventListener('click', event => {
    if (link.getAttribute('href') === '#') {
      event.preventDefault();
      alert(`Add your ${link.dataset.placeholder} URL in index.html.`);
    }
  });
});
