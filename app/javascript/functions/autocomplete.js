const autoComplete = () => {
  const Choices = require('choices.js');
  const artistDropdown = document.getElementById('artist-select');
  if (artistDropdown) {
    const artistChoice = new Choices(artistDropdown, {
      removeItemButton: true,
      renderChoiceLimit: 10
    });
    const labelDropdown = document.getElementById('label-select');
    const labelChoice = new Choices(labelDropdown, {
      removeItemButton: true,
      renderChoiceLimit: 10
    });
    const riddimDropdown = document.getElementById('riddim-select');
    const riddimChoice = new Choices(riddimDropdown, {
      removeItemButton: true,
      renderChoiceLimit: 10
    });
    const producerDropdown = document.getElementById('producer-select');
    const producerChoice = new Choices(producerDropdown, {
      removeItemButton: true,
      renderChoiceLimit: 10
    });
  }

}

export { autoComplete };
