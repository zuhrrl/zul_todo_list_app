# zul_todo_list_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Socket Parameter

To post a socket message, you need to connect to Socket.io and then post with the event name 'general' using the payload below.

```
{
  "channel": "general",
  "message_to": "zuhrrlanam@gmail.com",
  "message_from": "postman",
  "message": "your message",
  "data": int | string | object
}
```
