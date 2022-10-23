<% String description = "{hna description ....}"; %>
<% String roomNum = "{hna room num ...}"; %>
<jsp:include page="../components/header.jsp"/>
  <jsp:include page="../components/navBarBg.jsp"/>

    <div class="text-xl font-semibold m-10 ml-40">
        Room <% out.print(roomNum); %>
    </div>
    <!-- hna les images -->
    <div class="flex justify-center gap-4">
        <div class="w-72 h-72">
            <img src="http://localhost/assets/imgs/r1.png" class="rounded-md w-full">
        </div>
        <div class="w-72 h-72">
            <img src="http://localhost/assets/imgs/r2.png" class="rounded-md w-full">
        </div>
        <div class="w-72 h-72">
            <img src="http://localhost/assets/imgs/r1.png" class="rounded-md w-full">
        </div>
        <div class="w-72 h-72">
            <img src="http://localhost/assets/imgs/r4.png" class="rounded-md w-full">
        </div>
    </div>

    <div class="text-xl font-semibold ml-40">
        Services
    </div>

    <div class="mt-3 ml-44">
        <div class="text-gray-300 font-medium">Mesures covid-19&nbsp;&nbsp; Connexion Wi-Fi gratuite&nbsp;&nbsp; Parking&nbsp;&nbsp; Animaux domestiques admis&nbsp;&nbsp; Accessible en fauteuil roulant </div>
    </div>

    <div class="mt-5 text-xl font-semibold ml-40">
        Description
    </div>

    <div class="mt-3 ml-44">
        <div class="text-gray-300 font-medium"><% out.print(description); %></div>
    </div>

    <div class="mt-5 ml-40">
        <button type="submit" class="bg-green-600 text-white text-xs font-semibold px-4 py-2 rounded-full">Book now</button>
        <button onclick="location.href='roomDetail.jsp'" type="submit" class="bg-[#4B476A] text-white text-xs font-semibold px-4 py-2 rounded-full">View details</button>
    </div>

