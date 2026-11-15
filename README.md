# TechnoLab Workshop Participation Analysis

**Status: in progress — analysis queries and findings are not yet complete.**

An independent SQL portfolio project inspired by school robotics outreach. All data is synthetic. This is not an official University of Johannesburg project and contains no real school or learner records.

## Business question
How can workshop participation data help plan school outreach and use workshop capacity effectively?

## Tools and data model
SQLite SQL. `schools` links to `attendance` through `school_id`; `workshops` links to `attendance` through `workshop_id`. Each attendance row represents one school at one workshop. Workshop capacity is the maximum number of learners for that session.

8 schools, 8 workshops and 15 attendance records. Dates use YYYY-MM-DD. The dataset intentionally includes schools without attendance and a workshop without attendance.

**Metric limitation:** sums measure learner attendances, not unique learners. A learner may attend multiple sessions; no individual learner identifiers are collected.

## Files
- `schema.sql`: table definitions and constraints.
- `sample_data.sql`: fictional records.
- `analysis.sql`: practice questions and space for independently written queries.
- `START_HERE.md`: execution instructions and first task.
- `technolab.db`: ready-to-use SQLite database containing the same records.

## Rebuild
In a fresh SQLite database, execute `schema.sql` once, then `sample_data.sql` once. Alternatively open `technolab.db` directly; do not rerun the setup scripts over it.

## Findings
Pending completion of the analysis. Results and recommendations will be added after queries have been checked.

## Authorship
Portfolio owner: Michael Phahlane. Starter schema and synthetic data prepared with AI assistance. Analysis queries and interpretation to be completed by the portfolio owner.
