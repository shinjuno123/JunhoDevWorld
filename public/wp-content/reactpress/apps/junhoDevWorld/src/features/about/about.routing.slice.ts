import { createSlice } from "@reduxjs/toolkit";


interface AboutRouterState {
    params: string[]
    previuosPageParam: string,
    nextPageParam: string
}

const initialState: AboutRouterState = {
    params: ['','history','skills','projects'],
    previuosPageParam: '',
    nextPageParam: ''
}

const AboutRouterSlice = createSlice({
    name: 'aboutRouter',
    initialState,
    reducers: {
        setPreviousPage(state, location) {
            for(let i=0; i<state.params.length; i++) {
                const param = state.params[i];

                if (param === location.payload) {
                    const prevPageNumber = (i - 1 + state.params.length) % state.params.length;
                    state.previuosPageParam = state.params[prevPageNumber];
                }
            }

        },
        setNextPage(state, location) {
            for(let i=0; i<state.params.length; i++) {
                const param = state.params[i];

                if (param === location.payload) {
                    const nextPageNumber = (i + 1) % state.params.length;
                    state.nextPageParam = state.params[nextPageNumber];
                }
            }
        }
    }
});

export const {setPreviousPage, setNextPage} = AboutRouterSlice.actions;
export default AboutRouterSlice.reducer;