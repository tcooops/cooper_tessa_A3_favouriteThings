// import your packages here
import { fetchData } from "./modules/DataMiner.js";

(() => {

    console.log('loaded');
    
    function popErrorBox(message) {
        alert("Something has gone wrong");
    }

    function handleDataSet(data) {
        let userSection = document.querySelector('.favourite-things'),
            userTemplate = document.querySelector('#things-template').content;

        for (let user in data) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.things').children;

            currentUserText[1].src = `images/${data[user].avatar}`;
            currentUserText[2].textContent = data[user].title;
            currentUserText[3].textContent = data[user].name;
            currentUserText[4].textContent = data[user].description;

            // add this new user to the view
            userSection.appendChild(currentUser);
        }
    }

    function retrieveProjectInfo() {
        // test for an ID
        debugger;
        console.log(this.id);

        fetchData(`./includes/index.php?id=${this.id}`).then(data => console.log(data)).catch(err => console.log(err));
    }

    function renderPortfolioThumbnails(thumbs) {
        let userSection = document.querySelector('.favourite-things'),
            userTemplate = document.querySelector('#things_template').content;

        for (let user in thumbs) {
            let currentUser = userTemplate.cloneNode(true),
                currentUserText = currentUser.querySelector('.things').children;

            currentUserText[1].src = `images/${thumbs[user].avatar}`;
            currentUserText[1].id = thumbs[user].id;
            // add this new user to the view
            currentUser.addEventListener("click", retrieveProjectInfo);
            userSection.appendChild(currentUser);
        }
    }
        
    fetchData("./includes/index.php").then(data => renderPortfolioThumbnails(data)).catch(err => console.log(err));
})();