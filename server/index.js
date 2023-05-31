const express = require("express");

const mongoose = require("mongoose");

const authRouter = require("./routes/auth");
const adminRouter = require("./routes/admin");

const PORT = 3000;

const app = express();

const db =
  "mongodb+srv://trantuankiet11884:0932997294@cluster0.yy4v2si.mongodb.net/?retryWrites=true&w=majority";

app.use(express.json());

app.use(authRouter);
app.use(adminRouter);

mongoose
  .connect(db)
  .then(() => {
    console.log("Connect success");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connect at port ${PORT}`);
});
