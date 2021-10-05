const { readFileSync } = require(`fs`);
const folderPath = process.argv[2];
try {
    const pathToFirebaseToolsJson = `${process.env.HOME}/.config/configstore/firebase-tools.json`;
    const fileContent = readFileSync(pathToFirebaseToolsJson);
    const firebaseToolsJson = JSON.parse(fileContent);
    const firebaseProjectName = firebaseToolsJson.activeProjects[folderPath];
    firebaseProjectName && console.log(`${firebaseProjectName} `);
} catch (error) {}
