package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.stream.Collectors;

@Controller
public class MaterialController {

    @Value("${file.upload-dir}")
    private String uploadDir;

    @GetMapping("/upload-material")
    public String showUploadPage() {
        return "uploadMaterial"; // Points to uploadMaterial.jsp
    }

    @PostMapping("/upload-material")
    public String uploadMaterial(@RequestParam("file") MultipartFile file, Model model) {
        try {
            if (file.isEmpty()) {
                model.addAttribute("message", "Please select a file to upload!");
                return "uploadMaterial";
            }

            // Resolve the upload directory from application.properties
            Path uploadPath = Paths.get(uploadDir);

            // Create the directory if it doesn't exist
            if (!Files.exists(uploadPath)) {
                Files.createDirectories(uploadPath); // Creates 'uploads' folder
            }

            // Copy the file to the target directory
            Path filePath = uploadPath.resolve(file.getOriginalFilename());
            Files.copy(file.getInputStream(), filePath);

            // Add success message
            model.addAttribute("message", "File uploaded successfully!");
            model.addAttribute("fileName", file.getOriginalFilename());
        } catch (IOException e) {
            model.addAttribute("message", "Failed to upload file: " + e.getMessage());
        }
        return "uploadMaterial";
    }

    @GetMapping("/download/{fileName}")
    public ResponseEntity<Resource> downloadFile(@PathVariable String fileName) {
        try {
            Path filePath = Paths.get(uploadDir).resolve(fileName).normalize();
            Resource resource = new UrlResource(filePath.toUri());

            if (!resource.exists()) {
                return ResponseEntity.notFound().build();
            }

            return ResponseEntity.ok()
                    .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + resource.getFilename() + "\"")
                    .body(resource);
        } catch (Exception e) {
            return ResponseEntity.internalServerError().build();
        }
    }

    @GetMapping("/list-materials")
    public String listMaterials(Model model) {
        try {
            Path dirPath = Paths.get(uploadDir);
            model.addAttribute("files", Files.list(dirPath)
                    .map(path -> path.getFileName().toString())
                    .collect(Collectors.toList()));
        } catch (IOException e) {
            model.addAttribute("message", "Error listing files: " + e.getMessage());
        }
        return "listMaterials";
    }
}
