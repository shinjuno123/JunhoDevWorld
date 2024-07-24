import './App.css'
import Footer from './footer';
import Header from './header';
import {Routes, Route} from 'react-router-dom';
import Home from './pages/home';
import Writing from './pages/writing';
import Notes from './pages/notes';
import Projects from './pages/projects';
import About from './pages/about';

function App() {
  return (
    <>
      <Header></Header>
      <Routes>
        <Route path='/' element={<Home/>}></Route>
        <Route path='posts' element={<Writing/>}></Route>
        <Route path='notes' element={<Notes/>}></Route>
        <Route path='projects' element={<Projects/>}></Route>
        <Route path='about' element={<About/>}></Route>
      </Routes>
      <Footer></Footer>
    </>
  )
}

export default App
