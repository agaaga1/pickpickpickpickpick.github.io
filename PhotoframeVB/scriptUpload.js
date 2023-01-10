const selectImage = document.querySelector('.select-image');
const inputFile = document.querySelector('#multiple_files');
//const imgArea = document.querySelector('.img-area');

//selectImage.addEventListener('click', function () {
//	inputFile.click();
//})

//inputFile.addEventListener('change', function () {
//	const image = this.files[0]

//		const reader = new FileReader();
//		reader.onload = ()=> {
//			const allImg = imgArea.querySelectorAll('img');
//			allImg.forEach(item=> item.remove());
//			const imgUrl = reader.result;
//			const img = document.createElement('img');
//			img.src = imgUrl;
//			imgArea.appendChild(img);
//			imgArea.classList.add('active');
//			imgArea.dataset.img = image.name;
//		}
//		reader.readAsDataURL(image);

//})
selectImage.addEventListener('click', function () {
    inputFile.click();
})

$(document).ready(function () {
    if (window.File && window.FileList && window.FileReader) {
        $("#multiple_files").on("change", function (e) {
            var multiple_files = e.target.files,
                filesLength = multiple_files.length;
            for (var i = 0; i < filesLength; i++) {
                var f = multiple_files[i]
                var fileReader = new FileReader();
                fileReader.onload = (function (e) {
                    var file = e.target;
                    $("<span class=\"total-image\">" +
                        "<span class=\"afterImage\">" +
                        "<div class=\"beforeImage\">" +
                        "<div class=\"contanier\">" +
                        "<div class=\img-area\" data-img>" +
                        "<img class=\"imageThumb\" src=\"" + e.target.result + "\" title=\"" + file.name + "\"/>"

                        + "</div>"




                        + "</div>" +
                        "</div>" +
                        "</div>"

                        + "</span>"
                        + "<br/> <span id=\"img-delete\" class=\"material-symbols-outlined\">do_not_disturb_on</span>"
                        + "</span>"
                    ).insertAfter("#multiple_files");
                    $("#img-delete").click(function () {
                        $(this).parent(".total-image").remove();
                    });
                    $(".afterImage").click(function () {
                        $(this).parent(".total-image").remove();
                    });

                });
                fileReader.readAsDataURL(f);
            }
        });
    } else {
        alert("|Sorry, | Your browser doesn't support to File API")
    }
});
const filterMenu = document.getElementById('.filter-Menu')
function frameClick() {

    document.getElementById('.filter-Menu').style.margin = '500px';

}



document.querySelector("#show-login1").addEventListener("click",function(){
  document.querySelector(".popup").classList.add("active");
});
document.querySelector(".popup .close-btn").addEventListener("click",function(){
  document.querySelector(".popup").classList.remove("active");
});