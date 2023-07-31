<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Credit Card Validator</title>
    <link rel="stylesheet" href="style.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
      rel="stylesheet"
    />
  </head>
  <body class="bg-blue font-poppins">
    <h3
      class="text-white text-xl text-center font-medium mt-40 md:text-3xl md:font-semibold"
    >
      Credit Card Validator
    </h3>
    <hr class="w-36 md:w-56 h-1 mx-auto my-5 bg-green border-0 rounded" />
    <form
      name="cardValidate"
      action="card"
      class="grid grid-col-1 justify-center"
      method="post"
    >
      <input
        type="text"
        name="cardNo"
        placeholder="Enter Your Card No"
        maxlength="16"
        class="mx-auto w-64 p-1 rounded border border-green mb-4 outline-none text-grey md:w-96 md:p-3"
        required
      />
      <div
        class="p-1 w-64 mx-auto text-center bg-green text-white rounded cursor-pointer hover:bg-greenshade md:w-96 p-3"
      >
        <button
          class="text-base font-normal sm:text-lg sm:font-medium md:text-xl md:font-semibold"
          onclick="checkValidate()"
        >
          Check Card
        </button>
      </div>
      <div
        id="msg"
        class="text-base font-light sm:text-lg sm:font-medium md:text-xl md:font-semibold"
      >
        <p class="text-white w-64 p-1 text-center mt-4 md:w-96 md:p-3">
          ${msg}
        </p>
      </div>
    </form>

    <script src="main.js"></script>
  </body>
</html>
