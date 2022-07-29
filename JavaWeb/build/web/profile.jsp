<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
    crossorigin="anonymous"
    />
  <!-- JavaScript Bundle with Popper -->
    <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
    crossorigin="anonymous"
    ></script>
    <title>User Profile</title>
    <script>
      function changeInfor(){
        var infor=document.getElementById("infor");
        var changeinfor=document.getElementById("changeinfor");
        var back=document.getElementById("back");
        var btnchangeinfor=document.getElementById("btnchangeinfor");
        infor.style.display="none";
        changeinfor.style.display="";
        back.style.display="";
        btnchangeinfor.style.display="none";
      }
      function back(){
        var infor=document.getElementById("infor");
        var changeinfor=document.getElementById("changeinfor");
        var back=document.getElementById("back");
        var btnchangeinfor=document.getElementById("btnchangeinfor");
        infor.style.display="";
        changeinfor.style.display="none";
        back.style.display="none";
        btnchangeinfor.style.display="";
      }
    </script>
</head>
<body>
    <section style="background-color: #eee;">
        <div class="container py-5">
          <div class="row">
            <div class="col">
              <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
                <ol class="breadcrumb mb-0">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item"><a href="#">User</a></li>
                  <li class="breadcrumb-item active" aria-current="page">User Profile</li>
                </ol>
              </nav>
            </div>
          </div>
      
          <div class="row">
            <div class="col-lg-4">
              <div class="card mb-4">
                <div class="card-body text-center">
<!--                    <img src="" alt="avatar"
                    class="rounded-circle img-fluid" style="width: 150px;">-->
                  <h3 class="my-3">${User.avatar}</h3>
                  <h5 class="my-3">${User.name}</h5>
                  <p class="text-muted mb-1">Age:${User.age}</p>
                </div>
                <div class="d-flex justify-content-center mb-2">
                  <a class="btn btn-outline-primary ms-1" href="changepass.jsp" type="button">Change Password</a>
                  <button id="btnchangeinfor" onclick="changeInfor()" type="button" class="btn btn-outline-primary ms-1">Change Information</button>
                  <button id="back" onclick="back()" style="display: none;" type="button" class="btn btn-outline-primary ms-1">Back</button>
                </div>
              </div>
            </div>
            <div class="col-lg-8">
              <div class="card mb-4">
                <div id="infor" class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">User name</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">${User.username}</p>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Password</p>
                    </div>
                    <div class="col-sm-9">
                      <input style="border: none; background-color: white;" type="password" name="" id="" value="${User.password}" disabled>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Phone</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">${User.phone}</p>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <p class="mb-0">Address</p>
                    </div>
                    <div class="col-sm-9">
                      <p class="text-muted mb-0">${User.address}</p>
                    </div>
                  </div>
                </div>
                    
<!--thay doi thong tin-->
                    
                <div id="changeinfor" class="card-body" style="display: none;">
                  <form class="form-inline" action="Profile" method="post">
                    <input hidden="" type="text" name="iduser" class="form-control" required="" value="${User.iduser}">
                    <div class="row">
                      <div class="col-sm-3">
                        <p class="mb-0">Avatar</p>
                      </div>
                      <div class="col-sm-9">
                          <input type="text" autocomplete="off" class="form-control" name="avatar" id="avatar" value="${User.avatar}">
                      </div>
                    </div>
                    <hr>
                    <div class="row">
                      <div class="col-sm-3">
                        <p class="mb-0">Age</p>
                      </div>
                      <div class="col-sm-9">
                          <input type="text" autocomplete="off" class="form-control" name="age" id="age" value="${User.age}">
                      </div>
                    </div>
                    <hr>
                    <div class="row">
                      <div class="col-sm-3">
                        <p class="mb-0">Phone</p>
                      </div>
                      <div class="col-sm-9">
                          <input type="text" autocomplete="off" class="form-control" name="phone" id="phone" value="${User.phone}">
                      </div>
                    </div>
                    <hr>
                    <div class="row">
                      <div class="col-sm-3">
                        <p class="mb-0">Address</p>
                      </div>
                      <div class="col-sm-9">
                          <input type="text" autocomplete="off" class="form-control" name="address" id="address" value="${User.address}">
                      </div>
                    </div>
                    <hr>
                    <div class="d-flex justify-content-center mb-2">
                      <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
</body>
</html>