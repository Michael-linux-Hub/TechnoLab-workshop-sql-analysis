# Start here

1. Extract this ZIP on your computer.
2. Upload the extracted project files to your existing GitHub repository using Add file > Upload files. Review the README replacement before committing. Do not upload only the ZIP: visitors should be able to read the SQL files directly.
3. GitHub stores your files; it does not execute SQL files automatically.
4. Open technolab.db in a SQLite-compatible SQL editor. If your editor instead starts with an empty database, execute schema.sql first and sample_data.sql second.
5. Save successful analysis queries into analysis.sql and commit progress to GitHub.

## First task
List all school names and districts, sorted alphabetically by school name.

Use only the schools table. Choose the two columns requested and sort by school_name. Write the query yourself and share your attempt for review.

## Data dictionary
- schools.school_id: unique school identifier.
- schools.school_name: fictional school label.
- schools.district: district grouping for the synthetic school.
- workshops.workshop_id: unique session identifier.
- workshops.topic: training topic.
- workshops.workshop_date: session date in YYYY-MM-DD format.
- workshops.capacity: maximum learners for that session.
- attendance.school_id / workshop_id: references to school and session.
- attendance.learners_attended: learners attending from that school in that session.

Capacity must be compared with the SUM of attendance across schools in the workshop, not with each school's count individually. Foreign-key checks must be enabled on each SQLite connection when editing records.
