import "../css/style.scss";
import axios from "axios";

// Our module
import Navigation from "./modules/navigation";
import Note from "./modules/notes";
import Post from "./modules/post";
import About from "./modules/about";
import Glide from "@glidejs/glide";


const currentPage = devworldData['permalink'];
new Navigation();

if (currentPage.includes('posts')) {
    new Post();
}

if (currentPage.includes('note')) {
    new Note();
}

if(currentPage.includes('about')) {
    new Glide('.glide', {
        type: 'carousel',
        startAt: 0,
        perView: 1
    }).mount();
    new About();

}