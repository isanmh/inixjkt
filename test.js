// make api get
function get() {
                    return fetch("https://jsonplaceholder.typicode.com/posts").then((response) =>
    response.json()
  );
}
