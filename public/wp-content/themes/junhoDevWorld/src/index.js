import "../css/style.scss";
import axios from "axios";

// Our module
import Navigation from "./modules/navigation";
import Page from "./modules/page";
import Note from "./modules/notes";

const currentPage = devworldData['permalink'];
new Navigation();

if (currentPage.includes('posts')) {
    new Page();
}

if (currentPage.includes('note')) {
    new Note();
}