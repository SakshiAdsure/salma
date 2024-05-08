<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main screen</title>
<!--
 <link href="CSS/mainScreen.css" rel="stylesheet"/>
<base>
 <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">  -->
	
	<script src="https://cdn.tailwindcss.com"></script>
	
</head>

<!--  

<body>
   
   <div class="container-fluid" style="background-image: url('img/background.jpg');">
     
        
          
    <nav class="navbar navbar-expand-lg navbar-light navbar-right">
        <a class="navbar-brand" href="#">EmployeeManagement</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav">
            <a class="nav-item nav-link active" href="#">Home <span class="sr-only"></span></a>
            <a class="nav-item nav-link" href="#">Features</a>
            <a class="nav-item nav-link" href="#">Pricing</a>
          </div>
        </div>
      </nav>

      <div class="row">

      <div class="col-md-4 col-sm-12 left-container">

    
    <img src="img/man.png" class="img-fluid">
      </div>

      <div class="col-md-8 col-sm-12 right-container">

        <div class="admin">
          <form>
            <div class="mb-4 ">
              <h5 class="heading">Admin Login</h5>
              <label for="exampleInputEmail1" class="form-label">Username</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
              
            </div>
            <div class="mb-5">
              <label for="exampleInputPassword1" class="form-label">Password</label>
              <input type="password" class="form-control" id="exampleInputPassword1">
            </div>
            
            <button type="submit" class="btn">Login</button>
          </form>
        </div>

        <div class="emp">
          <form>
            <h5 class="heading">Employee Login</h5>
            <div class="mb-4">
              
              <label for="exampleInputEmail1" class="form-label">Name</label>
              <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
              
            </div>
            <div class="mb-5">
              <label for="exampleInputPassword1" class="form-label">Password</label>
              <input type="password" class="form-control" id="exampleInputPassword1">
            </div>
            
            <button type="submit" class="btn">Login</button>
          </form>
        </div>

      </div>
    </div>

    </div>

      <script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

-->

<div class="container-fluid mx-auto">

        <nav class="bg-white border-gray-200 dark:bg-gray-100">
            <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-4">
                <a href="https://flowbite.com/" class="flex items-center space-x-3 rtl:space-x-reverse">
                    <img src="https://flowbite.com/docs/images/logo.svg" class="h-8" alt="Flowbite Logo" />
                    <span
                        class="self-center text-2xl font-semibold whitespace-nowrap dark:text-balck">EmployeeManagement</span>
                </a>
                <button data-collapse-toggle="navbar-default" type="button"
                    class="inline-flex items-center p-2 w-10 h-10 justify-center text-sm text-gray-500 rounded-lg md:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
                    aria-controls="navbar-default" aria-expanded="false">
                    <span class="sr-only">Open main menu</span>
                    <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none"
                        viewBox="0 0 17 14">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M1 1h15M1 7h15M1 13h15" />
                    </svg>
                </button>
                <div class="hidden w-full md:block md:w-auto" id="navbar-default">
                    <ul
                        class="font-medium flex flex-col p-4 md:p-0 mt-4 border border-gray-100 rounded-lg bg-gray-50 md:flex-row md:space-x-8 rtl:space-x-reverse md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-100 dark:border-gray-700 dark:text-balck">
                        <li>
                            <a href="#"
                                class="block py-2 px-3 text-balck bg-blue-700 rounded md:bg-transparent md:text-blue-700 md:p-0 dark:text-white md:dark:text-blue-500"
                                aria-current="page">Home</a>
                        </li>
                        <li>
                            <a href="#"
                                class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-black md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">About</a>
                        </li>
                        <li>
                            <a href="#"
                                class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-black md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Services</a>
                        </li>
                        <!-- <li>
            <a href="#" class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-black md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Pricing</a>
          </li> -->
                        <li>
                            <a href="#"
                                class="block py-2 px-3 text-gray-900 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-blue-700 md:p-0 dark:text-black md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">Contact</a>
                        </li>

                        <li>
                            <button class="border-solid border-2 border-sky-800 rounded-full px-2">Log In</button>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <div class="slider flex flex-col-reverse md:flex-row bg-gray-200 mt-1">

            <div
                class="left flex flex-col justify-center items-center md:items-baseline py-12 ml-32 space-y-5 pr-[5rem]">
                <h1 class="text-2xl font-medium md:text-4xl mx-5">PersonnelPilot</h1>
                <p class="w-3/4 mx-4 text-center md:text-left">Unlock the full potential of your organization with
                    PersonnelPilot, the ultimate employee management solution</p>
                <div class="md:flex">
                    <a href="#"><button
                            class="text-white bg-black px-4 py-2 my-5 font-bold mx-5 rounded-lg hover:bg-gray-900">Admin</button></a>
                    </a><button
                        class="text-white bg-black px-4 py-2 my-5 font-bold mx-5 rounded-lg hover:bg-gray-900">Employee</button>
                </div>
            </div>
            <div class="right">
                <img class="md:w-[38rem]" src="img/emp.png" alt="Employee image">
            </div>

        </div>

        <div class="flex flex-col md:flex-row mt-1">
            <div class="w-full md:w-1/2 bg-gray-200 p-4">
              <!-- Content for the left section -->
              <img class="md:w-[38rem]" src="img/emp.png" alt="employee image">
            </div>
            <div class="w-full md:w-1/2 bg-gray-300 p-4">
              <!-- Content for the right section -->
              <h1 class="text-4xl font-bold text-center mb-6 mt-3">ABOUT</h1>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Alias rem incidunt sit nobis sunt laudantium eius dolorem saepe, porro earum aspernatur aliquid, eligendi voluptatum quis veritatis nihil. Quaerat sit, esse quod impedit nobis voluptatibus fuga sint libero, voluptatum rem ipsa voluptas repudiandae unde ipsum mollitia nisi tempore optio error dolorum!</p>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia sequi rerum, earum nobis perspiciatis inventore nam similique quo sint non quam ducimus ea tenetur beatae culpa omnis. Doloremque aperiam deserunt quaerat cum doloribus, ab porro officiis quod officia debitis aspernatur alias incidunt! In architecto labore maxime tempora ipsa odio animi consequuntur eveniet vero? Alias veritatis quos facere fugit, error accusantium, doloremque inventore facilis, odio magnam animi laborum nam perspiciatis sunt.</p>
            </div>
          </div>
          
          <div class="service mt-1 space-x-2">
            <div class="flex flex-wrap">
                <!-- Box 1 -->
                <div class="w-full md:w-1/2 lg:w-1/3 bg-gray-200 p-4 box-border h-72 w-32 p-4 border-4 relative gap-4">
                    <img src="img/att.png" alt="Image 1" class="w-full h-full object-cover absolute top-0 left-0 justify-center items-center">
                    <h3 class="text-lg font-semibold">Title 1</h3>
                </div>
                <!-- Box 2 -->
                <div class="w-full md:w-1/2 lg:w-1/3 bg-gray-200 p-4 box-border h-72 w-32 p-4 border-4 relative ">
                    <img src="img/att.png" alt="Image 1" class="w-full h-full object-cover absolute top-0 left-0 justify-center items-center">
                    <h3 class="text-lg font-semibold">Title 1</h3>
                </div>
                <!-- Box 3 -->
                <div class="w-full md:w-1/2 lg:w-1/3 bg-gray-200 p-4 box-border h-72 w-32 p-4 border-4 relative ">
                    <img src="img/att.png" alt="Image 1" class="w-full h-full object-cover absolute top-0 left-0 justify-center items-center">
                    <h3 class="text-lg font-semibold">Title 1</h3>
                </div>
                <!-- Box 4 -->
                <div class="w-full md:w-1/2 lg:w-1/3 bg-gray-200 p-4 box-border h-72 w-32 p-4 border-4 relative ">
                    <img src="img/att.png" alt="Image 1" class="w-full h-full object-cover absolute top-0 left-0 justify-center items-center">
                    <h3 class="text-lg font-semibold">Title 1</h3>
                </div>
                <!-- Box 5 -->
                <div class="w-full md:w-1/2 lg:w-1/3 bg-gray-200 p-4 box-border h-72 w-32 p-4 border-4 relative ">
                    <img src="img/att.png" alt="Image 1" class="w-full h-full object-cover absolute top-0 left-0 justify-center items-center">
                    <h3 class="text-lg font-semibold">Title 1</h3>
                </div>
                <!-- Box 6 -->
                <div class="w-full md:w-1/2 lg:w-1/3 bg-gray-200 p-4 box-border h-72 w-32 p-4 border-4 relative ">
                    <img src="img/att.png" alt="Image 1" class="w-full h-full object-cover absolute top-0 left-0 justify-center items-center">
                    <h3 class="text-lg font-semibold">Title 1</h3>
                </div>
            </div>
        </div>

        <div class="contact bg-gray-200 py-12 lg:pl-64 mt-1">
            <div class="max-w-6xl mx-auto px-4 lg:px-48">
                <h2 class="text-3xl font-semibold mb-6">Contact Us</h2>
                <div class="grid grid-cols-1 md:grid-cols-2 lg:gap-8">
                    <div>
                        <h3 class="text-xl font-semibold mb-2">Send us a Message</h3>
                        <form>
                            <div class="mb-4">
                                <label for="name" class="block text-gray-700">Name</label>
                                <input type="text" id="name" name="name" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-blue-400" placeholder="Your Name">
                            </div>
                            <div class="mb-4">
                                <label for="email" class="block text-gray-700">Email</label>
                                <input type="email" id="email" name="email" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-blue-400" placeholder="Your Email">
                            </div>
                            <div class="mb-4">
                                <label for="message" class="block text-gray-700">Message</label>
                                <textarea id="message" name="message" class="w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-blue-400" rows="5" placeholder="Your Message"></textarea>
                            </div>
                            <button type="submit" class="bg-blue-500 text-white px-6 py-3 rounded-md hover:bg-blue-600 transition duration-300">Send Message</button>
                        </form>
                    </div>
                    <!-- <div>
                        <h3 class="text-xl font-semibold mb-2">Contact Information</h3>
                        <p class="mb-2"><strong>Address:</strong> 123 Main Street, City, Country</p>
                        <p class="mb-2"><strong>Email:</strong> info@example.com</p>
                        <p class="mb-2"><strong>Phone:</strong> +1234567890</p>
                    </div> -->
                </div>
            </div>
        </div>
        
        <footer class="bg-gray-300 text-gray-900 py-2">
            <div class="max-w-6xl mx-auto px-4 flex flex-col md:flex-row items-center justify-between">
                <div class="mb-4 md:mb-0">
                    <h2 class="text-lg font-semibold">Company Name</h2>
                    <p class="text-sm">123 Main Street, City, Country</p>
                    <p class="text-sm">info@example.com</p>
                    <p class="text-sm">+1234567890</p>
                </div>
                <div class="flex flex-wrap justify-center md:justify-end space-x-6">
                    <a href="#" class="text-sm">Home</a>
                    <a href="#" class="text-sm">About Us</a>
                    <a href="#" class="text-sm">Services</a>
                    <a href="#" class="text-sm">Contact</a>
                </div>
            </div>
        </footer>
        

        </div>


    </div>
</body>
</html>