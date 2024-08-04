import { useEffect, useState } from "react";
import {Outlet} from 'react-router-dom';
import { useAppDispatch } from "../app/hooks";
import { setNextPage, setPreviousPage } from "../features/about/about.routing.slice";
import { useLocation } from 'react-router-dom';

export default function About() {
    const [isFullscreen, setFullscreen] = useState(false);
    const dispatch = useAppDispatch();
    const location = useLocation();

    useEffect(()=> {
        const currentParam = location.pathname.replace('/about','').slice(1);
        dispatch(setNextPage(currentParam));
        dispatch(setPreviousPage(currentParam));
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        });
    });

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