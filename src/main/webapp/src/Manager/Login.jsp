<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>KharbouchaHotel</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                colors: {
                    primary: '#4B476A',
                },
                extend: {
                    colors: {
                        clifford: '#da373d',
                    }
                }
            }
        }
    </script>

    <style type="text/tailwindcss">
        @layer utilities {
            .content-auto {
                content-visibility: auto;
            }
        }
    </style>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>

</head>
<body class="font-['Poppins']">
<!-- Container -->
<div class="flex flex-wrap min-h-screen w-full content-center justify-center bg-white py-5">

    <!-- Login component -->
    <div class="flex shadow-lg">
        <!-- Login form -->
        <div class="flex flex-wrap content-center justify-center rounded-l-md bg-white w-full" style="width: 35rem; height: 35rem;">
            <div class="w-50">
                <img class="w-16 mb-8 mr-2" src="http://localhost/assets/imgs/logo1.png">
                <!-- Heading -->
                <h1 class="text-2xl font-semibold">Welcome back</h1>
                <small class="text-gray-400">Login with your data that you entered
                    during your registration</small>

                <!-- Form -->
                <form class="mt-4">
                    <div class="mb-4 mt-10">
                        <label class="mb-3 block text-l font-semibold">Enter your email address </label>
                        <input type="email" placeholder="name@exemple.com" class="block h-10 w-full text-xs rounded-md border border-gray-300 focus:border-[#4B476A] focus:outline-none focus:ring-1 focus:ring-purple-700 p-4 text-gray-500" />
                    </div>

                    <div class="mb-4">
                        <label class="mb-3 block text-l font-semibold">Password</label>
                        <input type="password" placeholder="*****" class="block w-full h-10 text-xs rounded-md border border-gray-300 focus:border-[#4B476A] focus:outline-none focus:ring-1 focus:ring-purple-700 p-4 text-gray-500" />
                    </div>

                    <div class="mb-3">
                        <button class="mb-1.5 block text-center text-white bg-[#4B476A] hover:bg-purple-900 px-5 py-2 rounded-3xl"><a href="dashboard" class="">Login</a></button>
                    </div>
                </form>


            </div>
        </div>

        <!-- Login banner -->
        <div class="flex flex-wrap content-center justify-center rounded-r-md" style="width: 35rem; height: 35rem;">
            <img class="w-full h-full bg-center bg-no-repeat bg-cover rounded-r-md" src="http://localhost/assets/imgs/img.png">
        </div>

    </div>


</div>
</body>
</html>
