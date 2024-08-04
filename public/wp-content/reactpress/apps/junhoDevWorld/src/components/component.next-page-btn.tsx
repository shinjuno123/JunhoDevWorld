import { Link } from "react-router-dom";
import { useAppSelector } from "../app/hooks";

export default function NextPage() {
  const nextPageParam = useAppSelector((state) => state.counter.nextPageParam);

  return (
    <>
      <div className="button-padding next-button">
        <Link to={`/about/${nextPageParam}`}>
          <span>Next page</span>
          <i className="material-icons">arrow_forward_ios</i>
        </Link>
      </div>
    </>
  );
}
