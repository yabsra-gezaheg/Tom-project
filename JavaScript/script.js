const menu = document.querySelector("#menu");
const nav = document.querySelector("#nav");

menu.addEventListener("click", () => {
    nav.classList.toggle("d-none");
    // if(!nav.classList.contains("d-none") && (!nav.contains(event.target)) {
    //     nav.classList.add("d-none");
    // }
});

// document.addEventListener("click", (event) => {
//     if (!nav.contains(event.target) || !menu.contains(event.target) || !nav.classList.contains("d-none")) {
//         nav.classList.add("d-none");
//     }
// });

   
const listItems = document.querySelectorAll('#nav ul li');
const sections = document.querySelectorAll('.all');

listItems.forEach((item) => {
    item.addEventListener('click', () => {
        // Remove 'active' and 'active-b' classes from all list items
        listItems.forEach((li) => {
            li.classList.remove('active-b');
            li.querySelector('a').classList.remove('active-c');
            li.querySelector('i').classList.remove('active-c');
        });

        // Add 'active' and 'active-b' classes to the clicked list item
        item.classList.add('active-b');
        item.querySelector('a').classList.add('active-c');
        item.querySelector('i').classList.add('active-c');

        // Hide all sections
        sections.forEach((section) => {
            section.classList.add('d-none');
        });

        // Show the corresponding section
        const sectionId = item.getAttribute('id').replace('-link', '');
        const activeSection = document.querySelector(`#${sectionId}.all`);
        activeSection.classList.remove('d-none');
    });
});