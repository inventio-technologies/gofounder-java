<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>GoFounders</title>

      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/css/bootstrap.min.css"
        integrity="sha384-PDle/QlgIONtM1aqA2Qemk5gPOE7wFq8+Em+G/hmo5Iq0CCmYZLv3fVRDJ4MMwEA" crossorigin="anonymous">
    <link rel="stylesheet" href="fonts/fonts.css" />
    <link rel="stylesheet" href="https://www.gofounders.net/assests/userlogin/css/aos.css" />
    <link rel="stylesheet" href="https://www.gofounders.net/assests/userlogin/css/inline.css" />
    <link rel="stylesheet" href="https://www.gofounders.net/assests/userlogin/css/responsive.css" />
    <link rel="icon" href="https://www.gofounders.net/assests/userlogin/images/fav-icon.png" type="image/gif" sizes="16*16">



</head>

<body>


    <div class="main-wrapper">
        <div class="register-section">
            <div class="container">
                <div class="row justify-content-center">

                    <div class="col-lg-7">
                        <div class="registration-fields forgot-pass reset-login">

                            <div class="row justify-content-center">
                                <div class="col-lg-9"><a href="index.html" class="btn btn-warning btn-lg">Back</a></div>
                                <div class="col-lg-3"></div>
                                <div class="col-11 ">

                                    <div class="site-logo text-center">
                                        <img src="https://www.gofounders.net/assests/userlogin/images/logo.png" alt="" class="img-fluid">
                                    </div>
                                    <h4 class="text-uppercase font-weight-bold text-center mt-4">Resend verification Link</h4>






                                    <form:form class="form-horizontal mt-5" id="emailVerification" name="emailVerification" action="verifyemail" method="get">
                                        <fieldset>
                                            <div class="row">

                                                <div class="form-group col-12">
                                                    <input name="email" type="email" placeholder="Email Address"
                                                        class="form-control" required="required"/>
                                                </div>



                                                <div class="submit-btn col-12 text-center mt-5">
                                                    <button type="submit" class="btn btn-warning btn-lg">Resend Verification</button>
                                                </div>



                                            </div>

                                        </fieldset>
                                    </form:form>
                                </div>
                            </div>


                        </div>

                    </div>


                </div>
            </div>
        </div>

    </div>








    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/js/bootstrap.min.js"
        integrity="sha384-7aThvCh9TypR7fIc2HV4O/nFMVCBwyIUKL8XCtKE+8xgCgl/PQGuFsvShjr74PBp"
        crossorigin="anonymous"></script>
    <script src="js/aos.js"></script>

    <script>
        AOS.init();
    </script>

</body>

</html>