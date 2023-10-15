import { useDispatch } from "react-redux";
import { bindActionCreators } from "redux";
import { actionCreators } from "../state";

export const useActions = () => {
  const dispatch = useDispatch();
  //store.dispatch(MyActionCreators.doSomething())
  return bindActionCreators(actionCreators, dispatch);
};
