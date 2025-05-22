import { search } from "./js-modules/search.js";

function main() {
    // TODO
    // Hier müssen die Event Listener hinzugefügt werden,
    // so dass die Funktion "search" aufgerufen wird, wenn
    // man auf den Suchen-Button klickt

    const button = document.getElementById('searchButton');
    button.addEventListener('click', search);
    
    const inputField = document.getElementById('search');
    inputField.addEventListener('keypress', function(event) {
        if (event.key === 'Enter') {
            event.preventDefault();
            search();
        } 
    });
    
}

if (document.readyState === "loading") {
    // Dokument lädt noch
    document.addEventListener("DOMContentLoaded", main);
} else {
    // Dokument wurde schon geladen
    main();
}
