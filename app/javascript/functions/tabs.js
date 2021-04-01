const tabsDisplay = () => {
  const tabs = document.querySelectorAll('.tab');
  const panels = document.querySelectorAll('.table');
  if (tabs) {
    tabs.forEach((tab) => {
      tab.addEventListener('click', () => {
        tabs.forEach((t) => { t.classList.remove('active') });
        panels.forEach((p) => { p.classList.remove('active') });
        const ref = tab.getAttribute('id').split('-')[0];
        const panel = document.getElementById(`${ref}-table`);
        panel.classList.add('active');
        tab.classList.add('active');
      });
    });
  }

}

export { tabsDisplay };
