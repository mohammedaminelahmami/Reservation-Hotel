<%String roomType = "{room type}"; %>
<%String roomNum = "{room num}"; %>
<%String roomDescription = "{description Lorem ipsum dolor amet}"; %>

<jsp:include page="../components/header.jsp"/>
    <jsp:include page="../components/navBarBg.jsp"/>
    <div class="m-8 p-2">
        <div class="mt-5 ml-10 text-xl font-semibold">Rooms <% out.print(roomType); %></div>
        <div class="flex flex-wrap">
            <!-- Start Card -->
            <div class="flex flex-col w-1/4 bg-[#1E1E1E] rounded-3xl m-10 mt-16">
                <div class="w-100"><img src="http://localhost/assets/imgs/r1.png" class="w-100 rounded-t-3xl" height="120"></div>
                <div class="text-white font-semibold self-center p-4"><% out.print(roomNum); %></div>
                <div class="text-white text-xs self-center p-1"><% out.print(roomDescription); %></div>
                <div class="text-white text-xs self-center p-2"><% out.print(roomDescription); %></div>
                <div class="flex justify-between p-2">
                    <div class="text-gray-200 text-xs ml-3 p-4">$80 / Day</div>
                    <div class="flex gap-2 mr-3 p-1">
                        <button type="submit" class="bg-green-600 text-white text-xs font-semibold px-4 py-1 rounded-full">Book now</button>
                        <button onclick="location.href='roomDetail.jsp'" type="submit" class="bg-[#4B476A] text-white text-xs font-semibold px-3 py-1 rounded-full">View details</button>
                    </div>
                </div>
            </div>
            <!-- End Card -->

            <!-- Start Card -->
            <div class="flex flex-col w-1/4 bg-[#1E1E1E] rounded-3xl m-10 mt-16">
                <div class="w-100"><img src="http://localhost/assets/imgs/r1.png" class="w-100 rounded-t-3xl" height="120"></div>
                <div class="text-white font-semibold self-center p-4"><% out.print(roomNum); %></div>
                <div class="text-white text-xs self-center p-1"><% out.print(roomDescription); %></div>
                <div class="text-white text-xs self-center p-2"><% out.print(roomDescription); %></div>
                <div class="flex justify-between">
                    <div class="text-gray-200 text-xs ml-3 p-4">$80 / Day</div>
                    <div class="flex gap-2 mr-3 p-1">
                        <button type="submit" class="bg-green-600 text-white text-xs font-semibold px-4 py-1 rounded-full">Book now</button>
                        <button onclick="location.href='roomDetail.jsp'" type="submit" class="bg-[#4B476A] text-white text-xs font-semibold px-3 py-1 rounded-full">View details</button>
                    </div>
                </div>
            </div>
            <!-- End Card -->

            <!-- Start Modal -->



            <!-- End Modal -->
        </div>
    </div>

<div class="mt-40">
    <jsp:include page="../components/footer.jsp"/>
</div>
