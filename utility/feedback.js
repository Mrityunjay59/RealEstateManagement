const DB = require('../config/database');

function receiveFeedback(req,res,next) {
    res.render('feedback.ejs');
};

function submitFeedback(req,res, next) {

    if(req.body.loggedIn) {

        var date = new Date();
        date = date.toISOString().slice(0, 19).replace('T', ' ');
        DB.query(`INSERT INTO feedback VALUES(${req.body.id}, '${req.body.feedback}', '${date}')`, function(err, feedback) {
            if(err)
             throw err;
            res.render('feedback',{message: 'Feedback has been received!'});
        });
    }
};

module.exports = {
    receiveFeedback,
    submitFeedback
};