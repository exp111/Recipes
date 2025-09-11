---
layout: post
title:  Feta Linguine
tags:
  - nudeln
---

<label for="amount">Portionen:</label>
<input type="number" id="amount" value="2" min="1" onchange="updateZutaten()">

Zutaten:
- <span base="1"></span> Eier
- <span base="0.5"></span>g Mehl

<script>
function updateZutaten() {
  const amount = parseFloat(document.getElementById("amount").value) || 1;
  const elements = document.querySelectorAll("span");

  elements.forEach(el => {
    const base = parseFloat(el.getAttribute("base"));
    if (!base) {
      return;
    }
    const value = (base * amount).toFixed(1).replace(/[.,]0$/, "");
    el.textContent = value;
  });
}
updateZutaten()
</script>