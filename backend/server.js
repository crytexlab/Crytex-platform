const express = require("express");
const app = express();

app.use(express.json());

app.get("/api/status", (req, res) => {
  res.json({
    platform: "Crytex",
    status: "active",
    version: "0.1.0"
  });
});

app.post("/api/stake", (req, res) => {
  const { user, amount } = req.body;

  res.json({
    success: true,
    message: `User ${user} staked ${amount} CTX`
  });
});

app.listen(3000, () => {
  console.log("Crytex API running on port 3000");
});
