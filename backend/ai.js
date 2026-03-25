const express = require("express");
const router = express.Router();

router.post("/ai", async (req, res) => {
  const { message } = req.body;

  // заглушка (потом подключишь OpenAI)
  const response = `Crytex AI: You asked "${message}"`;

  res.json({ reply: response });
});

module.exports = router;
