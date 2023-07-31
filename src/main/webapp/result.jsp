<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Result</title>
    <link rel="stylesheet" href="style.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
      rel="stylesheet"
    />
  </head>
  <body class="bg-blue">
    <h3
      class="text-white text-xl text-center font-medium mt-40 md:text-3xl md:font-semibold"
    >
      Validation Status
    </h3>
    <hr class="w-36 md:w-56 h-1 mx-auto my-5 bg-green border-0 rounded" />
    <table>
      <table class="table-auto sm:table-fixed m-auto w-11/12 md:8/12">
        <thead class="bg-gray-50 border-b-2 border-gray-200">
          <tr>
            <th
              class="p-3 text-xs/[6px] sm:text-sm font-semibold tracking-wide text-left sm:text-center leading-4"
            >
              S.No
            </th>
            <th
              class="p-3 text-xs/[6px] sm:text-sm font-semibold tracking-wide text-left sm:text-center leading-4"
            >
              Card Number
            </th>
            <th
              class="p-3 text-xs/[6px] sm:text-sm font-semibold tracking-wide text-left sm:text-center leading-4"
            >
              Card Type
            </th>
            <th
              class="p-3 text-xs/[6px] sm:text-sm font-semibold tracking-wide text-left sm:text-center leading-4"
            >
              Card Status
            </th>
          </tr>
        </thead>
        <tbody>
          <tr class="bg-greenlight">
            <td
              class="p-3 text-xs/[6px] sm:text-sm text-gray-800 text-left sm:text-center font-normal"
            >
              1
            </td>
            <td
              class="p-3 text-xs/[6px] sm:text-sm text-gray-800 text-left sm:text-center font-normal"
            >
              ${card}
            </td>
            <td
              class="p-3 text-xs/[6px] sm:text-sm text-gray-800 text-left sm:text-center font-normal"
            >
              ${cardName}
            </td>
            <td
              class="p-3 text-xs/[6px] sm:text-sm text-gray-800 text-left sm:text-center font-normal"
            >
              Vaild
            </td>
          </tr>
        </tbody>
      </table>
    </table>
    <div
      class="p-1 w-20 mx-auto my-5 text-center bg-gray-50 text-gray-800 rounded cursor-pointer md:w-24 md:p-1"
    >
      <button
        class="text-base font-normal sm:text-lg sm:font-semibold md:text-lg"
        onclick="window.history.back()"
      >
        Back
      </button>
    </div>
  </body>
</html>
