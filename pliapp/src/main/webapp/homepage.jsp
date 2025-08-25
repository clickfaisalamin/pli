<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<% request.setAttribute("homeactive", "active"); %>
<% request.setAttribute("title", "Home"); %>
<jsp:include page="format/header.jsp"></jsp:include>



<div class="container bg-light">
<h3 class="text-success bg-light p-2 fw-bold text-center display-4">PLI APP</h3>
<table class="table table-striped table-bordered table-hover">
  <thead class="bg-primary text-white text-center p-2 fs-5">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Course</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Java Servlet</td>
      <td>Pending</td>
      <td class="text-center">
      		<a href="#" class="btn btn-success me-2">Edit</a>
      		<a href="#" class="btn btn-danger">Delete</a>
      </td>
    </tr>
    
    <tr>
      <th scope="row">2</th>
      <td>Daniel</td>
      <td>Python</td>
      <td>Complete</td>
      <td class="text-center">
      		<a href="#" class="btn btn-success me-2">Edit</a>
      		<a href="#" class="btn btn-danger">Delete</a>
      </td>
    </tr>
    
  </tbody>
</table>
</div>

    
 <jsp:include page="format/footer.jsp"></jsp:include>

