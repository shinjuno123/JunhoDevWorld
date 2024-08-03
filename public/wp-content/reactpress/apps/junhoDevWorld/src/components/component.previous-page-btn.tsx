import { useAppDispatch, useAppSelector } from "../app/hooks";
import { toPreviousPage } from "../features/about/about.routing.slice";
import { useNavigate } from "react-router-dom";

export default function PreviousPage() {
  const {currentPageNumber, params} = useAppSelector((state) => state.counter);
  const dispatch = useAppDispatch();
  const navigate = useNavigate();

  function handleClick() {
    dispatch(toPreviousPage());
    const previousPageParam = params[currentPageNumber];
    navigate(`${previousPageParam}`);
  }

  return (

    <>
      <div className="button-padding prev-button">
        <button onClick={handleClick}>
          <i className="material-icons">arrow_back_ios</i>
          <span>Previous page</span>
        </button>
      </div>
    </>
  );
}
