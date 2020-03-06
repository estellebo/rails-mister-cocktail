import Swal from 'sweetalert2'


const initSweetAlert = () => {
  const button = document.querySelector('.sweet-alert');
  button.addEventListener('click', (event) => {
    event.preventDefault();
    console.log(event.currentTarget);
    console.log("ok");
  });
};



export { initSweetAlert };
