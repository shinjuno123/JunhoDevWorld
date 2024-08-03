import {configureStore} from '@reduxjs/toolkit';
import AboutRouterReducer from "../features/about/about.routing.slice"


export const store = configureStore({
    reducer: {
        counter: AboutRouterReducer,
    },

});

export type AppDispatch = typeof store.dispatch;
export type RootState = ReturnType<typeof store.getState>;