<jsp:include page="../components/header.jsp"/>
    <jsp:include page="../components/navBarBg.jsp"/>
    <div>
        <div class="self-center text-xl p-2 text-[#4B476A] font-bold ml-72 mt-5">
            Make your reservation
        </div>
        <div class="flex justify-center m-8 border-2 border-[#e8e6ff] rounded-sm mx-64" style="height: 50rem">
            <div class="flex flex-col p-4 w-2/3">
                <div class="flex justify-center gap-28 mt-6">
                    <div class="flex flex-col gap-4">
                        <div class="ml-1 text-medium text-[#4B476A] font-semibold">Check in</div>
                        <div><input type="date" class="rounded-md w-48 h-8 text-sm" placeholder="mm/dd/yyyy"></div>
                    </div>

                    <div class="flex flex-col gap-4">
                        <div class="ml-1 text-medium text-[#4B476A] font-semibold">Check out</div>
                        <div><input type="date" class="rounded-md w-48 h-8 text-sm" placeholder="mm/dd/yyyy"></div>
                    </div>
                </div>

                <div class="flex flex-col gap-1 mt-6">
                    <div class="text-medium text-[#4B476A] font-semibold" style="margin-left: 4.6rem">Email</div>
                    <input type="text" placeholder="xyz@gmail.com" class="self-center rounded-md h-8 text-sm" style="width: 77%">
                </div>

                <div class="flex flex-col gap-1 mt-6">
                    <div class="text-medium text-[#4B476A] font-semibold" style="margin-left: 4.6rem">Phone number</div>
                    <input type="tel" placeholder="06XXXXXXXX" class="self-center rounded-md h-8 text-sm" style="width: 77%">
                </div>

                <div class="flex flex-col gap-1 mt-6">
                    <div class="text-medium text-[#4B476A] font-semibold" style="margin-left: 4.6rem">nom</div>
                    <input type="text" placeholder="nom" class="self-center rounded-md h-8 text-sm" style="width: 77%">
                </div>

                <div class="flex flex-col gap-1 mt-6">
                    <div class="text-medium text-[#4B476A] font-semibold" style="margin-left: 4.6rem">prenom</div>
                    <input type="text" placeholder="prenom" class="self-center rounded-md h-8 text-sm" style="width: 77%">
                </div>

                <div class="flex flex-col gap-1 mt-6">
                    <div class="text-medium text-[#4B476A] font-semibold" style="margin-left: 4.6rem">adress</div>
                    <input type="text" placeholder="adress" class="self-center rounded-md h-8 text-sm" style="width: 77%">
                </div>

                <div class="flex flex-col mt-8">
                    <div class="text-medium text-[#4B476A] font-semibold" style="margin-left: 4.6rem">Extras</div>
                    <div class="flex justify-center gap-8">
                        <div class="flex flex-col gap-4">
                            <div class="flex gap-3">
                                <input type="checkbox">
                                <div class="text-xs text-[#4B476A] font-semibold">Breakfast</div>
                            </div>

                            <div class="flex gap-3">
                                <input type="checkbox">
                                <div class="text-xs text-[#4B476A] font-semibold">Lunch</div>
                            </div>

                            <div class="flex gap-3">
                                <input type="checkbox">
                                <div class="text-xs text-[#4B476A] font-semibold">Dinner</div>
                            </div>
                        </div>
                        <div class="flex flex-col gap-4">
                            <div class="flex gap-3">
                                <input type="checkbox">
                                <div class="text-xs text-[#4B476A] font-semibold">Fruits</div>
                            </div>

                            <div class="flex gap-3">
                                <input type="checkbox">
                                <div class="text-xs text-[#4B476A] font-semibold">Music</div>
                            </div>

                            <div class="flex gap-3">
                                <input type="checkbox">
                                <div class="text-xs text-[#4B476A] font-semibold">Spa</div>
                            </div>
                        </div>
                        <div class="flex flex-col gap-4">
                            <div class="flex gap-3">
                                <input type="checkbox">
                                <div class="text-xs text-[#4B476A] font-semibold">Massage</div>
                            </div>

                            <div class="flex gap-3">
                                <input type="checkbox">
                                <div class="text-xs text-[#4B476A] font-semibold">Care</div>
                            </div>

                            <div class="flex gap-3">
                                <input type="checkbox">
                                <div class="text-xs text-[#4B476A] font-semibold">Excursion</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mt-8" style="margin-left: 4.4rem">
                    <button type="submit" class="bg-[#4B476A] text-white text-sm font-semibold px-4 py-2 rounded-full">Book now</button>
                </div>
            </div>
            <div class="w-1/3">
                <img src="http://localhost/assets/imgs/book.jpg" class="w-full h-full">
            </div>
        </div>
    </div>
<div class="mt-80">
    <jsp:include page="../components/footer.jsp"/>
</div>