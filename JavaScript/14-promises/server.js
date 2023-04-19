function getData() {
  return new Promise(function(resolve, reject) {
    setTimeout(function() {
      let data = [1, 2, 3];
      if (data.length > 0) {
        resolve(data);
      } else {
        reject("No data found");
      }
    }, 1000);
  });
}

getData()
  .then(function(data) {
    console.log(data);
    return data.map(function(num) {
      return num * 2;
    });
  })
  .then(function(data) {
    console.log(data);
  })
  .catch(function(err) {
    console.log(err);
  });
