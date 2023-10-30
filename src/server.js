const express = require("express");
const app = express();

const PORT = process.env.PORT || 4000;

app.get("/", (req, res) => {
  res.send("Holla");
});

app.listen(PORT, () => {
  console.log(`running at ${PORT}`);
});
