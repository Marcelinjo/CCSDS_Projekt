# CCSDS Telemetry (TM) Communication with ASM - Satellite Side in VHDL

This project implements a **CCSDS-compliant Telemetry (TM)** communication system in VHDL, focusing on the **generation** of **TM frames** with an **Attached Synchronization Marker (ASM)**. The goal is to generate telemetry frames on the satellite side for transmission to a ground station. The system follows the CCSDS standard for telemetry data transmission, including frame synchronization with the ASM marker.

## Project Structure

- **TM Frame Generation**: The system generates the basic structure of CCSDS Telemetry (TM) frames, which includes:
  - **Attached Synchronization Marker (ASM)**: This marker is placed before each frame to ensure synchronization at the receiver side (ground station).
  - **Primary Header**: Contains essential information such as Sequence Count, Packet ID, and optional fields.
  - **Payload**: The actual telemetry data, such as sensor readings or satellite status information.
  - **Operational Control Field (OCF)**: An optional field for mission-specific control or status information.

- **Frame Generation Process**: 
  - The ASM is prepended to each frame to help the ground station detect the start of the frame.
  - The Primary Header is filled with metadata like the Sequence Count and Packet ID.
  - The Payload contains the telemetry data that needs to be transmitted.
  - The frame is then prepared for transmission over the communication link.

- **No Frame Detection**: Since the satellite only needs to generate and send the frames, **frame detection** is not part of this project. The ground station will handle frame detection and processing.

## Features

- **TM Frame Generation**: Creation of CCSDS-compliant Telemetry frames with the correct structure.
- **Attached Synchronization Marker (ASM)**: Each frame starts with an ASM to mark the beginning of the frame for synchronization at the receiver side.
- **Primary Header**: Includes the sequence count and packet ID for frame identification.
- **Payload**: Contains telemetry data that needs to be transmitted.
- **Operational Control Field (OCF)** (optional): Provides mission-specific control data if required.
- **No error correction**: This project focuses on frame generation and synchronization, without implementing error detection or correction.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/Marcelinjo/CCSDS_Projekt.git
