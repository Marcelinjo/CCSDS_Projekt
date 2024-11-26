# CCSDS Telemetry (TM) Communication with ASM in VHDL

This project implements a **CCSDS-compliant Telemetry (TM)** communication system in VHDL, focusing on the generation and detection of **TM frames** with **Attached Synchronization Marker (ASM)**. The system follows the CCSDS standard for telemetry data transmission, ensuring frame synchronization at the receiver side using ASM.

## Project Structure

- **TM Frame Generation**: Implementing the basic structure of CCSDS Telemetry (TM) frames, including:
  - **Primary Header**: Contains essential information about the frame (e.g., Sequence Count, Packet ID).
  - **Payload**: The actual telemetry data to be transmitted.
  - **Operational Control Field (OCF)**: Optional field for mission-specific control information.
  - **Attached Synchronization Marker (ASM)**: Added before each frame to mark the beginning of a new frame for synchronization.

- **Synchronization**: The **ASM** is used to synchronize the receiver with the incoming frame stream. The ASM ensures that the frame boundaries are correctly detected.

- **No Error Correction**: The system does not implement error detection or correction mechanisms (e.g., CRC or Reed-Solomon).

## Features

- **TM frame generation** with the standard CCSDS frame structure.
- **Attached Synchronization Marker (ASM)** to identify the start of each frame for synchronization.
- **Primary Header** containing key frame information (e.g., Sequence Count).
- **Payload**: Telemetry data to be transmitted.
- **Operational Control Field (OCF)**: Optional field for mission-specific control information.
- **No error detection or correction**: Focuses purely on frame generation and synchronization.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/Marcelinjo/CCSDS_Projekt.git
