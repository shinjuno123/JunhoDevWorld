import { Link } from "react-router-dom";
import { useAppSelector } from "../app/hooks";

export default function PreviousPage() {
  const previuosPageParam = useAppSelector(
    (state) => state.counter.previuosPageParam
  );

  return (
    <>
      <div className="button-padding prev-button">
        <Link to={`/about/${previuosPageParam}`}>
          <i className="material-icons">arrow_back_ios</i>
          <span>Previous page</span>
        </Link>
      </div>
    </>
  );
}
