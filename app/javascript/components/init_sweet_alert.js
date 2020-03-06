import Swal from 'sweetalert2'

const initSweetAlert = () => {
  const button = document.querySelector('.sweet-alert');
  button.AddEventListenner('click', event => {
    console.log("ok");
  });
};

export { initSweetAlert };
