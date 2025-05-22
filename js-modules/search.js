import { createCardElement } from "./createCard.js";

// Diese Funktion muss noch geschrieben werden
async function search() {

    // TODO
    // 1. Es soll der aktuelle Suchbegriff aus dem Suchfeld ausgelesen werden.
    // 2. Es sollen von der API passende Kleinanzeigen zu diesem Begriff geladen werden.
    // 3. Die erhaltenen Anzeigen sollen dann als HTML-Elemente erstellt
    //    und auf der Seite als Children von den Elemente mit
    //    der ID 'anzeigenListe' eingehängt werden.

    const suchFeld = document.getElementById('search');
    const suchBegriff = suchFeld.value; 
    console.log(suchBegriff);

    const response = await fetch('api/api.php?search=' + suchBegriff);
    const anzeigen = await response.json();
    console.log(anzeigen);
    
    const anzeigeCard = document.getElementById('anzeigenListe');
    anzeigenListe.replaceChildren();
    
    for (let i = 0; i < (anzeigen.length); i++) {
        const alleAnzeigen = createCardElement(anzeigen[i]);
        anzeigenListe.appendChild(alleAnzeigen);
    }
}

export { search };
