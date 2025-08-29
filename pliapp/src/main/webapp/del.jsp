<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.PliDAO"%>
<%@page import="com.entity.PliDtls"%>
<% request.setAttribute("courseactive", "active"); %>
<% request.setAttribute("title", "Home"); %>
<jsp:include page="format/header.jsp"></jsp:include>


<div class="container">

	<div class="row>">
	
		<div class="col-md-6 offset-md-3">
		
			<div class="card">
			
			
				<div class="card-body">
				
					<div class="card-title text-success display-3 text-center fw-bold">Delete Course Form</div>
					
					<%
					
					  int id = Integer.parseInt(request.getParameter("id"));
					  PliDAO dao = new PliDAO(DBConnect.getConn());
					  PliDtls  t = dao.getPliById(id);
					  
					%>
					
					<form action="delpli"  method="post">
						<div class="mb-3">
						
							<label for="txtname" class="form-label">Name</label>
							<input type="text" class="form-control"  value="<%= t.getName() %>" placeholder="Enter Your Name Here" id="txtname" name="txtname" disabled>
						</div>
						
						<div class="mb-3">
						
							<label for="txtcourse" class="form-label">Course</label>
							<input type="text" class="form-control" value="<%= t.getCourse() %>" placeholder="Enter Your Name Here" id="txtcourse" name="txtcourse" disabled>
						</div>
						
						<div class="mb-3">
						
							<label for="drpstatus" class="form-label">Status</label> 
							<input class="form-control" list="datalistOptions"
								id="exampleDataList" placeholder="Type to search..." value="<%= t.getStatus() %>" name="txtstatus" disabled>
							<datalist id="datalistOptions">
								<option value="Pending">
								<option value="Complete">
							</datalist>
						</div>
						
						<div class="mb-3">
							<div class="d-grid gap-2">
								<h3 class="text-danger">Are you sure ?</h3>
							 	<button class="btn btn-danger btn-lg" type="submit">Delete</button>
							 </div>
						
						</div>
					
					</form>
				
				</div>
			
			</div>
		
		
		</div>
	
	</div>

</div>


    
 <jsp:include page="format/footer.jsp"></jsp:include>

