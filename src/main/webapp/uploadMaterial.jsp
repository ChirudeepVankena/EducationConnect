<!DOCTYPE html>
<html>
<head>
    <title>Upload Material</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
                  <h2 class="text-center">Upload Material</h2>
    
      
            <div class="form-group mt-3">
                <label for="courseCode">Course Code:</label>
                <input type="text" id="courseCode" name="courseCode" class="form-control" placeholder="Enter Course Code" required>
            </div>
            <div class="form-group mt-3">
                <label for="courseName">Course Name:</label>
                <input type="text" id="courseName" name="courseName" class="form-control" placeholder="Enter Course Name" required>
            </div>
              <h2 class="text-center">Upload Material</h2>
        <form action="/upload-material" method="post" enctype="multipart/form-data" class="mt-4">
            <div class="form-group">
                <label for="file">Select File:</label>
                <input type="file" id="file" name="file" class="form-control" required>
            </div>
            <button type="submit" class="btn btn-primary mt-3">Upload</button>
        </form>
        <p class="text-success mt-3">${message}</p>
        <c:if test="${fileName != null}">
            <p>Uploaded File: <strong>${fileName}</strong></p>
            <p>Course Code: <strong>${courseCode}</strong></p>
            <p>Course Name: <strong>${courseName}</strong></p>
        </c:if>
    </div>
    <%@ include file="facultynavbar.jsp" %>
</body>
</html>
