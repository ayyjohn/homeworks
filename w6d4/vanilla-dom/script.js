document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const addPlace = (e) => {
    e.preventDefault();
    const favoritesList = document.getElementById("sf-places");
    const li = document.createElement("li");
    const favoriteInput = document.querySelector(".favorite-input");
    const favorite = favoriteInput.value;
    favoriteInput.value = "";

    li.textContent = favorite;
    favoritesList.appendChild(li);
  };

  const listSubmitButton = document.querySelector(".favorite-submit");
  listSubmitButton.addEventListener("click", addPlace);

  // adding new photos

  // --- your code here!


  const showForm = (e) => {
    e.preventDefault();

    const form = document.querySelector(".photo-form-container");
    if (form.className === "photo-form-container") {
      form.className = "photo-form-container hidden";
    }
    else {
      form.className = "photo-form-container";
    }
  };
  const formButton = document.querySelector(".photo-show-button");
  formButton.addEventListener("click", showForm);

  const addDog = (e) => {
    e.preventDefault();

    const dogsList = document.querySelector(".dog-photos");
    const li = document.createElement("li");
    const img = document.createElement("img");
    const imgInput = document.querySelector(".photo-url-input");
    const imgURL = imgInput.value;
    imgInput.value = "";
    img.src = imgURL;
    li.appendChild(img);
    dogsList.appendChild(li);
  };

  const addDogButton = document.querySelector(".photo-url-submit");
  addDogButton.addEventListener("click", addDog);
});
