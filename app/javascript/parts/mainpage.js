import React, {useState} from "react";
import {Box, Grid, Paper, Tab, Tabs, withStyles} from "@material-ui/core";

import avatar_sample_img from "assets/avatar_sample.png";
import Typography from "@material-ui/core/Typography";


const style = (theme) => ({
    headerSec: {
        padding: theme.spacing(2),
        paddingTop: 0,
        margin: 'auto',
    },
    tabSelector: {
        padding: theme.spacing(2),
        paddingBottom: 0,
        margin: 'auto',
    },
    tabPanel: {
        padding: theme.spacing(2),
        paddingTop: 0,
        margin: 'auto',
    }
});

const InfoCard = ({classes}) => <Paper className={classes.headerSec} elevation={0}>
    <Grid container direction={"row"} spacing={3} justifyContent={"flex-start"} alignItems={"flex-end"}>
        <Grid item>
            <img src={avatar_sample_img} width={'50px'} alt={""}/>
        </Grid>
        <Grid item>
            <Typography variant={'body1'}>Your Name</Typography>
        </Grid>
    </Grid>
</Paper>;

function TabPanel(props) {
    const {children, value, index} = props;

    return (
        <div hidden={value !== index} >
            {value === index && (
                <Box p={3}>
                    <Typography>{children}</Typography>
                </Box>
            )}
        </div>
    );
}

function MainPage(props) {
    const {classes} = props;
    const [tabValue, setTabValue] = useState(0);

    return <>
        <InfoCard classes={classes}/>
        <Tabs className={classes.tabSelector} value={tabValue} onChange={(e, v) => setTabValue(v)}>
            <Tab label={"Item One"}/>
            <Tab label={"Item Two"}/>
            <Tab label={"Item Three"}/>
        </Tabs>
        <TabPanel className={classes.tabPanel} value={tabValue} index={0}>
            Item One
        </TabPanel>
        <TabPanel className={classes.tabPanel} value={tabValue} index={1}>
            Item Two
        </TabPanel>
        <TabPanel className={classes.tabPanel} value={tabValue} index={2}>
            Item Three
        </TabPanel>
    </>;

}

export default withStyles(style)(MainPage);