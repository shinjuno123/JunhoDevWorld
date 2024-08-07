import "./App.css";
import Footer from "./footer";
import Header from "./header";
import { Routes, Route, useSearchParams, useNavigate } from "react-router-dom";
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
import { useEffect } from "react";
import Page404 from "./pages/page.404";

function App() {
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  const [searchParams, _setSearchParams] = useSearchParams();
  const navigate = useNavigate();

  useEffect(()=> {
      const redirect_path = searchParams.get('redirect');

      if(redirect_path) {
          navigate(redirect_path);
      }
  })

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
        <Route path="*" element={<Page404/>}></Route>
      </Routes>
      <Footer></Footer>
    </>
  );
}

export default App;
