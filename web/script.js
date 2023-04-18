function setColor(color) {
    const room = document.querySelector("model-viewer#room");
    const car = document.querySelector("model-viewer#car");
    const roomMaterial = room.model.materials[0];
    const carMaterial = car.model.materials[0];
    roomMaterial.pbrMetallicRoughness.setBaseColorFactor(color);
    carMaterial.pbrMetallicRoughness.setBaseColorFactor(color);
}

function runModesAnimation() {
    const room = document.querySelector("model-viewer#room");
    const car = document.querySelector("model-viewer#car");
    room.cameraOrbit='0deg 75deg 1mm';
    car.shadowIntensity="1";
    car.shadowSoftness="1";
    car.cameraOrbit='90deg 75deg 1mm';
}

function runColorsAnimation() {
    const room = document.querySelector("model-viewer#room");
    const car = document.querySelector("model-viewer#car");
    room.cameraOrbit='-30deg 70deg 1mm';
    car.shadowIntensity="1";
    car.shadowSoftness="1";
    car.cameraOrbit='60deg 75deg 1mm';
}

