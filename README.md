# CCSDS Telemetry (TM) Communication in VHDL

This project implements a **CCSDS-compliant Telemetry (TM)** communication system in VHDL. The focus is on the generation and detection of CCSDS TM frames, following the standard structure for telemetry data transmission. This project does **not** include error correction or synchronization mechanisms.

## Project Structure

- **TM Frame Generation**: Implementing the basic structure of CCSDS Telemetry (TM) frames, including the Primary Header, Payload, and optional Operational Control Field (OCF).
- **Frame Format**: The frames follow the CCSDS TM standard, which includes:
  - **Primary Header**: Contains essential information about the frame (e.g., Sequence Count, Packet ID).
  - **Payload**: The actual telemetry data to be transmitted.
  - **Operational Control Field (OCF)**: Optional field used for mission-specific control information.
- **No Error Correction**: The system does not include any error detection or correction mechanisms (e.g., CRC or Reed-Solomon).
- **No Synchronization**: This project does not include synchronization markers like ASM or FECF.

## Features

- **TM frame generation** based on the CCSDS standard.
- **Basic TM frame structure**: Primary Header, Payload, and OCF (optional).
- **No error detection or synchronization**: Focuses purely on the basic frame structure without additional error correction or synchronization.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/ccsds-tm-communication.git
