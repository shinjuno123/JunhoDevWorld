import NextPage from "../../components/component.next-page-btn";
import PreviousPage from "../../components/component.previous-page-btn";

export default function Intro() {
  return (
    <>
      <section className="about__intro local-page">
        <PreviousPage />

        <h1>Who am I</h1>
        <div className="card">
          <div className="card__intro">
            <div className="card__profile">
              <img
                src="<?php echo get_template_directory_uri() ?>/images/myface.jpg"
                alt="profile-picture"
              />
            </div>
            <div className="card__sentence">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
                eiusmod tempor incididunt ut labore et dolore magna aliqua.
                Neque volutpat ac tincidunt vitae semper quis. Urna id volutpat
                lacus laoreet non. Neque sodales ut etiam sit. Mattis nunc sed
                blandit libero volutpat. Eget egestas purus viverra accumsan in
                nisl. Quis imperdiet massa tincidunt nunc pulvinar sapien et.
                Nam libero justo laoreet sit amet cursus sit amet. Venenatis
                lectus magna fringilla urna porttitor. Enim neque volutpat ac
                tincidunt vitae semper quis lectus nulla. Amet est placerat in
                egestas erat imperdiet sed euismod. Vulputate odio ut enim
                blandit volutpat maecenas. Eu tincidunt tortor aliquam nulla
                facilisi cras fermentum. Ac tortor dignissim convallis aenean et
                tortor at. Dolor magna eget est lorem ipsum. Convallis posuere
                morbi leo urna. Blandit turpis cursus in hac. Hac habitasse
                platea dictumst vestibulum rhoncus est pellentesque elit
                ullamcorper. Enim lobortis scelerisque fermentum dui faucibus
                in. Quam quisque id diam vel quam elementum pulvinar.
              </p>
            </div>
          </div>
        </div>

        <NextPage />
      </section>
    </>
  );
}
