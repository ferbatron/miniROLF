function printCars(result) {
    document.write("<title>Машины</title>");
    for(var i in result) {
        document.write("<p>");
        for (var key in result[i]) {
            document.write(result[i][key] + " ");
        }
        document.write("</p>");
    }
    document.write("<button onclick=\"location.reload()\">Вернуться</button>");
}

function sendFile(file) {
    let formData = new FormData();
    formData.append("name", file.name);
    formData.append("image", file);

    const url = "http://localhost:3000/newpicture";

    let xhr = new XMLHttpRequest();
    xhr.open("POST", url, true);
    //xhr.setRequestHeader("Content-Type", "multipart/form-data");

    xhr.onreadystatechange = function () {
        if (xhr.status == 200 && xhr.readyState == 4) { 
            console.log("ok");
        } else if(xhr.readyState == 4) {
            console.log("Server response: ", xhr.statusText);
            alert("Ошибка, попробуйте ещё раз!");
            location.reload();
        }
    };

    xhr.send(formData);
}

function sendJSON() {
    let brand = document.querySelector('#brand');
    let model = document.querySelector('#model');
    let color = document.querySelector('#color');
    let date = document.querySelector('#date');
    let body = document.querySelector('#body');
    let power = document.querySelector('#power');
    let transmition = document.querySelector('#transmition');
    let engine = document.querySelector('#engine');
    let unit = document.querySelector('#unit');
    let country = document.querySelector('#country');
    let price = document.querySelector('#price');
    let photo = document.querySelector('#photo');

    const url = "http://localhost:3000/new";

    sendFile(photo.files[0]);

    let xhr = new XMLHttpRequest();
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-Type", "application/json");

    xhr.onreadystatechange = function () {
        if (xhr.status == 200 && xhr.readyState == 4) { 
            console.log("ok");
            alert("Машина успешно добавлена!");
            location.reload();
        } else if(xhr.readyState == 4) {
            console.log("Server response: ", xhr.statusText);
            alert("Ошибка, попробуйте ещё раз!");
            location.reload();
        }
    };

    var data_json = JSON.stringify({ 
        "brand": brand.value, 
        "model": model.value, 
        "color": color.value, 
        "date": Number(date.value), 
        "body": body.value, 
        "power": Number(power.value), 
        "transmition": transmition.value, 
        "engine": engine.value, 
        "unit": unit.value, 
        "country": country.value,
        "price": price.value,
        "photo": photo.files[0].name
    });

    xhr.send(data_json);
}

function sendJSON() {
    let name = document.querySelector('#name');
    let description = document.querySelector('#description');
    let price = document.querySelector('#price');
    let photo = document.querySelector('#photo');

    const url = "http://localhost:3000/newproduct";

    sendFile(photo.files[0]);

    let xhr = new XMLHttpRequest();
    xhr.open("POST", url, true);
    xhr.setRequestHeader("Content-Type", "application/json");

    xhr.onreadystatechange = function () {
        if (xhr.status == 200 && xhr.readyState == 4) { 
            console.log("ok");
            alert("Товар успешно добавлен!");
            location.reload();
        } else if(xhr.readyState == 4) {
            console.log("Server response: ", xhr.statusText);
            alert("Ошибка, попробуйте ещё раз!");
            location.reload();
        }
    };

    var data_json = JSON.stringify({ 
        "name": name.value, 
        "description": description.value, 
        "price": price.value,
        "photo": photo.files[0].name
    });

    xhr.send(data_json);
}

function getCars() {
    const url = "http://localhost:3000/cars";

    let xhr = new XMLHttpRequest();
    xhr.open("GET", url, true);

    xhr.onload = function () {
        if (xhr.status == 200) {
            printCars(JSON.parse(xhr.response));
            console.log("ok");
        } else {
            console.log("Server response: ", xhr.statusText);
            alert("Ошибка!");
            location.reload();
        }
    };

    xhr.send(null);
}

function findeCars() {
    let id = document.querySelector('#car_id');
    let brand = document.querySelector('#brand');
    let model = document.querySelector('#model');
    let color = document.querySelector('#color');
    let date = document.querySelector('#date');
    let body = document.querySelector('#body');
    let power = document.querySelector('#power');
    let transmition = document.querySelector('#transmition');
    let engine = document.querySelector('#engine');
    let unit = document.querySelector('#unit');
    let country = document.querySelector('#country');
    let price = document.querySelector('#price');

    const url = `http://localhost:3000/finde?id=${id.value}&brand=${brand.value}&model=${model.value}&color=${color.value}&date=${date.value}&body=${body.value}&power=${power.value}&transmition=${transmition.value}&engine=${engine.value}&unit=${unit.value}&country=${country.value}&price=${price.value}`;

    let xhr = new XMLHttpRequest();
    xhr.open("GET", url, true);

    xhr.onload = function () {
        if (xhr.status == 200) {
            printCars(JSON.parse(xhr.response));
            console.log("ok");
        } else {
            console.log("Server response: ", xhr.statusText);
            alert("Ошибка!");
            location.reload();
        }
    };

    xhr.send(null);
}

function updateCar() {
    let id = document.querySelector('#car_id');
    let brand = document.querySelector('#brand');
    let model = document.querySelector('#model');
    let color = document.querySelector('#color');
    let date = document.querySelector('#date');
    let body = document.querySelector('#body');
    let power = document.querySelector('#power');
    let transmition = document.querySelector('#transmition');
    let engine = document.querySelector('#engine');
    let unit = document.querySelector('#unit');
    let country = document.querySelector('#country');
    let price = document.querySelector('#price');
    let photo = document.querySelector('#photo');

    const url = `http://localhost:3000/edit?id=${id.value}&brand=${brand.value}&model=${model.value}&color=${color.value}&date=${date.value}&body=${body.value}&power=${power.value}&transmition=${transmition.value}&engine=${engine.value}&unit=${unit.value}&country=${country.value}&price=${price.value}&photo=${photo.files[0].name}`;

    let xhr = new XMLHttpRequest();
    xhr.open("PUT", url, true);

    xhr.onload = function () {
        if (xhr.status == 200) {
            console.log("ok");
            alert("Машина успешно обнавлена!");
            location.reload();
        } else {
            console.log("Server response: ", xhr.statusText);
            alert("Ошибка!");
            location.reload();
        }
    };

    xhr.send(null);
}

function deleteCar() {
    let id = document.querySelector('#car_id');

    const url = `http://localhost:3000/delete?id=${id.value}`;

    let xhr = new XMLHttpRequest();
    xhr.open("DELETE", url, true);

    xhr.onload = function () {
        if (xhr.status == 200) {
            console.log("ok");
            alert("Машина успешно удалена!");
            location.reload();
        } else {
            console.log("Server response: ", xhr.statusText);
            alert("Ошибка!");
            location.reload();
        }
    };

    xhr.send(null);
}

function findeQuarter() {
    let quarter = document.querySelector('#quarter');

    const url = `http://localhost:3000/quarter?quarter=${quarter.value}`;

    let xhr = new XMLHttpRequest();
    xhr.open("GET", url, true);

    xhr.onload = function () {
        if (xhr.status == 200) {
            console.log("ok");
            document.write('<h1>Сумма за выбранный период: ' + JSON.parse(xhr.response)['sum'] + ' руб.</h1>');
            document.write("<p><button onclick=\"location.reload()\">Вернуться</button></p>");
        } else {
            console.log("Server response: ", xhr.statusText);
            alert("Ошибка!");
            location.reload();
        }
    };

    xhr.send(null);
}