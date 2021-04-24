// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// ----------------------------------------------------
// ABOVE IS RAILS DEFAULT CONFIGURATION
// ----------------------------------------------------

// External imports
import "bootstrap";
import "jquery";

// Internal imports
import { autoComplete } from '../functions/autocomplete';
import { tabsDisplay } from "../functions/tabs"
import { transitions } from "../functions/transitions"

document.addEventListener('turbolinks:load', () => {
  tabsDisplay();
  autoComplete();

});
