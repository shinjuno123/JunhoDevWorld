import PreviousPage from "../../components/component.previous-page-btn";
import NextPage from "../../components/component.next-page-btn";

export default function Skills() {
  return (
    <>
      <section className="about__skill-summary local-page">
        <PreviousPage/>
        <h1>Skill Summary</h1>

        <div className="skills">
          <li className="skill">
            <div className="skill-name">
              <span>HTML</span>
            </div>
            <div className="skill-level">
              <div
                className="skill-level__gauge"
                style={{ width: "50%" }}
              ></div>
            </div>
            <div className="skill-percent">
              <span>50%</span>
            </div>
          </li>

          <li className="skill">
            <div className="skill-name">
              <span>CSS</span>
            </div>
            <div className="skill-level">
              <div
                className="skill-level__gauge"
                style={{ width: "100%" }}
              ></div>
            </div>
            <div className="skill-percent">
              <span>100%</span>
            </div>
          </li>

          <li className="skill">
            <div className="skill-name">
              <span>JS</span>
            </div>
            <div className="skill-level">
              <div
                className="skill-level__gauge"
                style={{ width: "50%" }}
              ></div>
            </div>
            <div className="skill-percent">
              <span>50%</span>
            </div>
          </li>

          <li className="skill">
            <div className="skill-name">
              <span>WordPress</span>
            </div>
            <div className="skill-level">
              <div
                className="skill-level__gauge"
                style={{ width: "50%" }}
              ></div>
            </div>
            <div className="skill-percent">
              <span>50%</span>
            </div>
          </li>
        </div>
        <NextPage/>
      </section>
    </>
  );
}
