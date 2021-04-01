const autoComplete = () => {
  const Choices = require('choices.js');
  const artistDropdown = document.getElementById('artist-select');
  const artistChoice = new Choices(artistDropdown);
  const labelDropdown = document.getElementById('label-select');
  const labelChoice = new Choices(labelDropdown);
  const riddimDropdown = document.getElementById('riddim-select');
  const riddimChoice = new Choices(riddimDropdown);
  const producerDropdown = document.getElementById('producer-select');
  const producerChoice = new Choices(producerDropdown);

}

export { autoComplete };
