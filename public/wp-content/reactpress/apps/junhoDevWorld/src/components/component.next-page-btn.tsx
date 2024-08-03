import { useAppDispatch, useAppSelector } from "../app/hooks";
import { toNextPage } from "../features/about/about.routing.slice";
import { useNavigate } from "react-router-dom";

export default function NextPage() {
  const {currentPageNumber, params} = useAppSelector((state) => state.counter);
  const dispatch = useAppDispatch();
  const navigate = useNavigate();

  function handleClick() {
    dispatch(toNextPage());
    const nextPageParam = params[currentPageNumber];
    navigate(`${nextPageParam}`);
  }

  return (

    
    <>
      <div className="button-padding next-button">
        <button onClick={handleClick}>
          <span>Next page</span>
          <i className="material-icons">arrow_forward_ios</i>
        </button>
      </div>
    </>
  );
}
