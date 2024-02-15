
# Google Book Api Mobile Project

## Packages Used

- flutter_riverpod (State Management)
- cached_network_image (Image Process)
- dio (Network)
- lottie (UI)
- flutter_svg (UI)
- shared_preferences (Local Database)
- build_runner (Codegen)
- freezed (Model)
- json_serializable (Model)
- json_annotation (Model)
- freezed_annotation (Model)

  
## API

### Book Search
- GET
```http
  https://www.googleapis.com/books/v1/volumes?q=search+${{query}}
```
  