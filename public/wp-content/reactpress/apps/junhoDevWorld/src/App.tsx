import "./App.css";
import Footer from "./footer";
import Header from "./header";
import { Routes, Route } from "react-router-dom";
import Home from "./pages/page.home";
import Writing from "./pages/page.writing";
import Notes from "./pages/page.notes";
import Projects from "./pages/page.projects";
import About from "./pages/page.about";
import SelectedPost from "./pages/page.selected-post";
import Intro from "./pages/about/page.about.intro";
import History from "./pages/about/page.about.history";
import Skills from "./pages/about/page.about.skills";
import AboutProjects from "./pages/about/page.about.projects";

function App() {
  return (
    <>
      <Header></Header>
      <Routes>
        <Route path="/" element={<Home />}></Route>
        <Route path="posts" element={<Writing />}></Route>
        <Route path="posts/:postId" element={<SelectedPost />}></Route>
        <Route path="notes" element={<Notes />}></Route>
        <Route path="projects" element={<Projects />}></Route>
        <Route path="about" element={<About />}>
          <Route path="" element={<Intro />}></Route>
          <Route path="history" element={<History />}></Route>
          <Route path="projects" element={<AboutProjects/>}></Route>
          <Route path="skills" element={<Skills />}></Route>
        </Route>
      </Routes>
      <Footer></Footer>
    </>
  );
}

export default App;
