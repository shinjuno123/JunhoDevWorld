import { useState } from "react";
import {Outlet} from 'react-router-dom';


export default function About() {
    const [isFullscreen, setFullscreen] = useState(false);

    function toggleFullscreen() {
        if (isFullscreen) {
            setFullscreen(false);
        } else {
            setFullscreen(true);
        }
    }

    return (
        <>
            <div className="loading-cover"></div>
            <section className={`about__section ${isFullscreen? 'screen-max':''}`}>
                <button onClick={toggleFullscreen} className="about__section-fullscreen-btn"><i className="material-icons">fullscreen</i><span>Full screen</span></button>
                <Outlet/>
            </section>
        </>
    )
}