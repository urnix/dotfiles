const { readFileSync } = require(`fs`);

const folderPath = process.argv[2];
try {
    const pathToFirebaseToolsJson = `${process.env.HOME}/.config/configstore/firebase-tools.json`;
    const fileContent = readFileSync(pathToFirebaseToolsJson);
    const firebaseToolsJson = JSON.parse(fileContent);
    const firebaseProjectName = firebaseToolsJson.activeProjects[folderPath];

    if (firebaseProjectName) {
        console.log(firebaseProjectName);
    }
} catch (error) {
    if (error.code && error.code === "ENOENT") {
        console.error(`Couldn't find file "${pathToFirebaseToolsJson}". Please create it with "$ firebase use <projectName>" in your project folder.`);
    } else {
        console.error(error);
    }
}