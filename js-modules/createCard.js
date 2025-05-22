// Diese Funktion ist schon fertig.

/**
 * Erstellt ein Element in Form einer Card für eine Kleinanzeige
 * @param {object} anzeige - die Kleinanzeige
 * @returns - gibt das erstellt Element zurück
 */
function createCardElement(anzeige) {

    const card = document.createElement('div');
    card.classList.add('card', 'm-2');
    card.style.width = '25rem'

    const image = document.createElement('img');
    image.setAttribute('src', `images/${anzeige.bildUrl}`);
    image.setAttribute('alt', anzeige.bildBeschreibung);
    card.appendChild(image);

    const cardBody = document.createElement('div');
    cardBody.classList.add('card-body');
    card.appendChild(cardBody);

    const cardTitle = document.createElement('h5');
    cardTitle.classList.add('card-title');
    cardTitle.textContent = anzeige.titel;
    cardBody.appendChild(cardTitle);

    const description = document.createElement('p');
    description.classList.add('card-text');
    description.textContent = anzeige.beschreibung;
    cardBody.appendChild(description);

    const creationDate = document.createElement('p');
    creationDate.classList.add('card-text');
    creationDate.textContent = anzeige.creationDate;
    cardBody.appendChild(creationDate);

    const footer = document.createElement('div');
    footer.classList.add('card-footer', 'd-flex', 'fw-bold', 'fs-5');
    footer.textContent = `${anzeige.preisInEuro} € ${anzeige.istPreisVerhandelbar === 1 ? 'Verhandlungsbasis' : 'Festpreis'}`;
    card.appendChild(footer);

    return card;
}

export { createCardElement };
