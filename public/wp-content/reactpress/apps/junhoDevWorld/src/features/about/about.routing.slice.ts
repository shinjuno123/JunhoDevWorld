import { createSlice } from "@reduxjs/toolkit";

interface AboutRouterState {
    params: string[]
    currentPageNumber: number
}

const initialState: AboutRouterState = {
    params: ['','history','skills','projects'],
    currentPageNumber: 0
}

const AboutRouterSlice = createSlice({
    name: 'aboutRouter',
    initialState,
    reducers: {
        toPreviousPage(state) {
            state.currentPageNumber = (state.currentPageNumber - 1 + state.params.length) % state.params.length;
        },
        toNextPage(state) {
            state.currentPageNumber = (state.currentPageNumber + 1) % state.params.length;
        }
    }
});

export const {toPreviousPage, toNextPage} = AboutRouterSlice.actions;
export default AboutRouterSlice.reducer;