// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import Container from '@material-ui/core/Container';
import Typography from '@material-ui/core/Typography';
import Box from '@material-ui/core/Box';
import Link from '@material-ui/core/Link';
import CssBaseline from '@material-ui/core/CssBaseline';
import { ThemeProvider } from '@material-ui/core/styles';

import ProTip from 'parts/protip';
import theme from "parts/theme";
import ButtonAppBar from 'parts/appbar';
import MainPage from "parts/mainpage";

function Copyright() {
    return (
        <Typography variant="body2" color="textSecondary" align="center">
            {'Copyright © '}
            <Link color="inherit" href="#">
                This Website
            </Link>{' '}
            {new Date().getFullYear()}
            {'.'}
        </Typography>
    );
}

function App() {
    return (
        <Box>
            <ButtonAppBar />
            <Container maxWidth="lg">
                <Box my={4}>
                    <MainPage />
                    <Copyright/>
                </Box>
            </Container>
        </Box>
    );
}

document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(
        <ThemeProvider theme={theme}>
            {/* CssBaseline kickstart an elegant, consistent, and simple baseline to build upon. */}
            <CssBaseline />
            <App />
        </ThemeProvider>,
        document.body.appendChild(document.createElement('div')),
    );
});
