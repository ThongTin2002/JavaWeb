<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <title>Change Password</title>
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
                  <li class="breadcrumb-item active" aria-current="page">Change Password</li>
                </ol>
              </nav>
            </div>
          </div>
      
          <div class="row">
            <div class="col-lg-4">
              <div class="card mb-4">
                <div class="card-body text-center">
                  <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
                    class="rounded-circle img-fluid" style="width: 150px;">
                  <h5 class="my-3">${sessionScope.user_acc.name}</h5>
                  <p class="text-muted mb-1">Age:${sessionScope.user_acc.age}</p>
                </div>
                <div class="d-flex justify-content-center mb-2">
                  <a href="<%=request.getContextPath()%>/Profile" type="button" class="btn btn-outline-primary ms-1">Back</a>
                </div>
              </div>
            </div>
            <div class="col-lg-8">
              <div class="card mb-4">
                <div class="card-body">
                  <form class="form-inline" action="ChangePassword" method="post">
                    <div id="changepass" class="card-body">
                        <div class="row">
                          <div class="col-sm-3">
                            <p class="mb-0">Current Password</p>
                          </div>
                          <div class="col-sm-9">
                              <input type="password" name="password" class="form-control" id="inputPasswordOld" required="">
                              <input hidden="" type="text" name="iduser" class="form-control" required="" value="${sessionScope.user_acc.iduser}">
                          </div>
                        </div>
                        <hr>
                        <div class="row">
                          <div class="col-sm-3">
                            <p class="mb-0">New Password</p>
                          </div>
                          <div class="col-sm-9">
                            <input type="password" name="newpassword" class="form-control" id="inputPasswordOld" required="">
                          </div>
                        </div>
                        <hr>
                        <div class="row">
                          <div class="col-sm-3">
                            <p class="mb-0">Repeat Password</p>
                          </div>
                          <div class="col-sm-9">
                              <input type="password" name="repeatpassword" class="form-control" id="inputPasswordOld" required="">
                          </div>
                        </div>
                        <hr>
                        <div class="d-flex justify-content-center mb-2">
                          <button type="submit" class="btn btn-primary">Save</button>
                        </div>
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