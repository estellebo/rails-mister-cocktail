import Swal from 'sweetalert2'


const initSweetAlert = () => {
  const button = document.querySelector('.sweet-alert');
  button.addEventListener('submit', (event) => {
    event.preventDefault();
    Swal.fire('Oops...', 'Something went wrong!', 'error')
  });
};



export { initSweetAlert };
