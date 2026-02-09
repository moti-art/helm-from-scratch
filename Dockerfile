# משתמשים באימג' קל ומהיר של שרת Nginx
FROM nginx:alpine

# מעתיקים דף שלום פשוט לתוך השרת
RUN echo "<h1>Hello Moti Levi !!! My Helm App is running!</h1>" > /usr/share/nginx/html/index.html

# השרת יאזין בפורט 80
EXPOSE 80