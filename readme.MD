# Robot framework tests for Valori
This project contains a few robot framework tests that check UI flows on the [test site](https://practicesoftwaretesting.com/).

## How to run
In order to run the tests, a few thins need to be in stalled.

- [Robot Framework](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#toc-entry-227)
- [Selenium library](https://github.com/robotframework/SeleniumLibrary)
- [Firefox](https://www.mozilla.org/nl/firefox/new/) (though you can change the browser in the settings at the top of the tests file)

And, if you want to be able to automatically rerun failed tests x number of times, 
[RetryFailed Listener](https://docs.robotframework.org/docs/flaky_tests#retryfailed-listener)

Then you can run the tests using `robot --outputdir ./Logs tests.robot ` or (if installed) `robot --listener RetryFailed:1 --outputdir ./Logs tests.robot` in the console.

### VSCode

When running the tests in VSCode, the extension "Robot Framework Language Server" will help when running the tests.
It allows you to easily run single tests and see the test results.

## Results

The results of a testrun are provided in a set of 3 files in the Logs folder: log.html, output.xml, and report.html. These are by default overwritten each time tests are run.
Opening the html files in a browser gives a good overview of the test results. They include screenshots for failed tests. You can switch between the report and the log in the top right corner.
