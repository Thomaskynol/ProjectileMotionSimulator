# Projectile Motion Simulator

This Lua script models the motion of a projectile launched at a specific angle and initial velocity. It calculates key details of the parabolic trajectory, including:
- Maximum height
- Horizontal range
- Time of flight

## Features
- Simulates the projectile's motion with gravity and an optional initial height.
- Computes key points of the parabola, such as the vertex and roots.
- Measures execution time for performance analysis.

## How It Works
The script uses a quadratic equation to represent the trajectory:
\[ y = ax^2 + bx + c \]
Where:
- \( a \): determined by gravity and initial velocity.
- \( b \): determined by the launch angle.
- \( c \): initial height.

Iterative calculations are performed to determine the point where the projectile hits the ground.

## How to Run
1. Save the script as `projectile_motion.lua`.
2. Ensure Lua is installed on your system.
3. Run the script in your terminal:
   ```bash
   lua projectile_motion.lua
