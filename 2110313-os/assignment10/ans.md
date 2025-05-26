# Operating System Short Questions

---

## 1. What is the name of the filesystem used by your system?

**คะแนน: 1**

- **File System Type:** `ext2/ext3`
- **Features:**
  - **Namelen:** 255 Bytes
  - **Block Size:** 4096 Bytes
  - **Total Blocks:** 263,940,717
  - **Total Inodes:** 67,108,864

---

## 2. What will happen if you change the permission of the file `test.txt`?

**Does the permission affect both `test.s` and `test.h`?**  
**คะแนน: 1**

Changing the permission of `test.txt` also affects `test.h`, suggesting it is a hard link to the same inode.  
However, `test.s` remains unchanged, indicating it is either a separate file or a symbolic link.

---

## 3. What is the difference between symbolic link and hard link?

**คะแนน: 1**

- **Symbolic Link:**

  - A reference (shortcut) to the original file path.
  - If the original file is deleted, the link becomes broken.
  - Deleting the symbolic link does **not** affect the original file.

- **Hard Link:**
  - Points directly to the same inode (data block) as the original file.
  - Even if the original file is deleted, the data is still accessible via the hard link.
  - All hard links are equal — none is "original."

---

## 4. Is it possible to create a hard link for a directory? Why or why not?

**คะแนน: 1**

No, creating hard links to directories is disallowed to prevent issues like:

- Infinite loops during traversal.
- Ambiguity in the file hierarchy structure.
- Compromised file system integrity.

---

## 5. What is the block size of your filesystem?

**When will a new block be allocated to a file?**  
**คะแนน: 1**

- **Block Size:** 4096 Bytes
- A new block is allocated **only when** the existing block(s) cannot accommodate additional data — e.g., when appending data causes the file to exceed its current block's capacity.

---

## 6. In `/proc`, what is the filesystem there?

**What does the content suggest? What are files in `/proc/[pid]/fd`?**  
**คะแนน: 1**

- **Filesystem Type:** `proc` (virtual filesystem)
- **Nature:**

  - Does **not** consume actual disk space.
  - Exists to provide **real-time** kernel and process information.

- **`/proc/[pid]/fd`:**
  - Contains symbolic links named after file descriptors.
  - Each link points to a file currently opened by the process with ID `[pid]`.

---
