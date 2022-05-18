<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">-->  
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<!-- ><%@ page import  ="java.util.Date" %>-->

    <title>Suggest</title>
    <!-- ><%@ page import  ="java.util.Date" %>-->
</head>
<body>

    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid" >
          <a class="navbar-brand text-white-50 bg-dark" href="#" > Learners Helping Learners</a>
          
          <button class="navbar-toggler" type="logo" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span> 
        

          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active home" aria-current="page" onClick="parent.location='index.jsp'" >Home</a>
              </li>
              <li class="nav-item" >
                <a class="nav-link active suggest" onClick="parent.location='suggest.jsp'" >Make a Suggestion </a>
              </li>
            </ul>
            <form class="d-flex" role="search">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
          </div>
        </div>
      </nav>

      <div class="p-3 bg-info bg-opacity-10 border border-info border-start-0 rounded-end">
       
      

<div class="submission">
  
   
    <div class="submission-container">
      <form name = "suggestionForm" method ="post" action = "suggest.jsp">
        <div class="mb-4">
            <label  class="form-label"> Answer a classmates question</label>
            <input type="text" class="border-success" id="suggestion" placeholder="Enter your advice here">
            <input type="submit" value = "Submit" />
        </div>
      </div>
        

        
        
      </form>


      <%
    String suggestion = request.getParameter("suggestion");
    out.println("You recommended: " + suggestion);
    
%>
    </div>
</div>




<div class = "Help">
    <h1>Have a question?</h1>
    
 <label for="subject">Indicate which subject you need assistance in.</label>

<select name="Subject" id="subject">
  <option value="math">Math</option>
  <option value="english">English</option>
  <option value="science">Science</option>
  <option value="social studies">Social studies</option>
</select>
</div>

<div class = "question-containter">
    <form name = "questionForm" method ="get" action = "suggest.jsp">
        <input type="text" placeholder="Type you question here.." name="question">  <br />
        <input type="submit" value = "Submit" />

        
        
      </form>

      <%
      String question = request.getParameter("question");
      out.println("<p>You requested help in " + question + "</p>");
      
%>
</div>

<div class = "formlink">
    <h1>See how other student's techniques and habits have helped them in their time of need.</h1>
    <a href = "https://docs.google.com/forms/d/1Xhk8XDsQlhCAdKlOqPKBI6y9kHSB6f72ncB9CQmNiug/edit#responses">Survey Results!</a>
</div>


</body>
</html>