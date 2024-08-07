import { Link } from "react-router-dom";

export default function Page404() {
  return <>
    <section className="page-404">
        <h1>Opps, Page Not Found!</h1>
        <div className="page-404__go-home">
            <h3>Please, get back to </h3>
            <Link to='/'>HOME</Link>
        </div>
    </section>
  </>;
}
