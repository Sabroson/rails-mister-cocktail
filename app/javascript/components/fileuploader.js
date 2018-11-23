function changeFileName() {
  const fileName = document.getElementById('cocktail_photo');
  const placehoder = document.querySelector('.file-name');

  if (fileName) {
    fileName.addEventListener('change', () => {
      const pathArray = fileName.value.split('\\');
      console.log(pathArray);
      console.log(pathArray[pathArray.length - 1]);
      placehoder.innerText = pathArray[pathArray.length - 1];
    });
  }
}

export {changeFileName}
