import os
user = os.getenv("secret_user", "World")
print(f"Hello, {user}")