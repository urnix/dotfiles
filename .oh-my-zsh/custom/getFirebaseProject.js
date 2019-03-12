const json = require(`${process.env.HOME}/.config/configstore/firebase-tools.json`);

const firebaseProjectName = json.activeProjects[process.argv[2]];

if (firebaseProjectName) {
    console.log(firebaseProjectName);
}