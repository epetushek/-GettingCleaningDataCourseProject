<h1>Getting and Cleaning Data Project Assignment</h1>

<h2>Code Book</h2>
<h3>run_analysis.R Script Overview</h3>
<body>
<ol>
  <li>Downloads and unzips file</li>
  <li>Loads .txt files from directory</li>
  <li>Adds subject ID and column names</li>
  <li>Merges the training and test data sets</li>
  <li>Extracts and selects only the variables containing the Mean and Standard Deviation</li>
  <li>Converts activity from numeric to string or descriptive form</li>
  <li>Re-labels column names to be more descriptive</li>
    <ul>
    <li>std to StdDev</li>
    <li>mean to Mean</li>
    <li>t to Time</li>
    <li>F to Frequency</li>
    <li>Bbody to Body</li>
    <li>Gg to Gyro</li>
    <li>AccMag to AccelMagnitude</li>
    <li>Bbodyaccjerkmag to BodyAccelJerkMagnitude</li>
    <li>JerkMag to JerkMagnitude</li>
    <li>GyroMag to GyroMagnitude</li>
    </ul>
  <li>Calculates average for each variable across each activity for every subject</li>
  <li>Writes data to .txt file labeled tidy.txt</li>
</ol> 
<a href="http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">Dataset Information</a>
</body>
