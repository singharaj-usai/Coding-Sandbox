async function getData() {
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

async function processData() {
  try {
    let data = await getData();
    console.log(data);
    data = data.map(function(num) {
      return num * 2;
    });
    console.log(data);
  } catch (err) {
    console.log(err);
  }
}

processData();
