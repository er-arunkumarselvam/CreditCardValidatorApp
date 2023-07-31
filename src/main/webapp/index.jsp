<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Home</title>
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

    <p
      class="my-[40px] mx-[80px] text-white text-center text-xs/[6px] text-center sm:text-base font-regular tracking-wide md:text-lg md:my-[40px] md:mx-[200px]"
    >
      The credit card validator implemented in Spring Boot is a component
      designed to validate credit card numbers using the Luhn algorithm. This
      algorithm is a widely used method to verify the integrity of credit card
      numbers by calculating a checksum digit.
    </p>
    <div
      class="p-1 w-36 mx-auto text-center bg-green text-white rounded cursor-pointer hover:bg-greenshade md:w-56 p-3"
    >
      <button
        class="text-base font-normal sm:text-lg sm:font-medium md:text-xl md:font-semibold"
        id="btn"
      >
        Validation
      </button>
    </div>
    <script src="main.js"></script>
  </body>
</html>
