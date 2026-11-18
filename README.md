# TechnoLab Workshop Participation Analysis

**Status: completed — SQL analysis, findings and recommendations documented.**
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

1. Synthetic School B recorded the highest participation,
   with 45 learner attendances. These are attendances,
   not unique learners.

2. Synthetic Schools G and H had no recorded workshop attendance.

3. District totals were:
   Johannesburg East: 80 learner attendances.
   Tshwane South: 72.
   Johannesburg Central: 67.

4. Two workshops reached full capacity:
   3D Printing on 19 August 2026.
   Arduino on 9 September 2026.

5. SPIKE Robotics on 14 October 2026 had no recorded
   attendance, despite having capacity for 40 learners.

6. Six of the eight workshops operated below capacity.

## Recommendations

1. Contact Synthetic Schools G and H to understand
   their participation barriers and offer suitable workshops.

2. Check whether the 14 October SPIKE Robotics workshop
   took place and whether its attendance was recorded.

3. Review bookings and school availability for workshops
   below capacity before adjusting future schedules.

## Authorship
Analysis queries and interpretation completed by Dikankatla Michael Phahlane with AI guidance.