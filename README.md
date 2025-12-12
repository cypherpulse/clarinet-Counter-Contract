# Counter Smart Contract

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Clarinet](https://img.shields.io/badge/Powered%20by-Clarinet-orange)](https://github.com/hirosystems/clarinet)
[![Stacks](https://img.shields.io/badge/Blockchain-Stacks-5546FF)](https://stacks.co)

A robust and simple counter smart contract built on the Stacks Blockchain using Clarity. This project demonstrates fundamental smart contract development patterns and serves as an educational example for blockchain developers.

![Counter Contract Demo](https://via.placeholder.com/800x400/5546FF/FFFFFF?text=Counter+Smart+Contract+Demo)

## 🚀 Features

- **Simple Counter Logic**: Increment, decrement, and read counter values
- **Blockchain Persistence**: State stored immutably on the Stacks network
- **Comprehensive Testing**: Full test suite with Vitest
- **Multi-Network Support**: Configurations for Devnet, Testnet, and Mainnet
- **Developer-Friendly**: Built with Clarinet for easy development and deployment

## 📋 Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Testing](#testing)
- [Deployment](#deployment)
- [API Reference](#api-reference)
- [Contributing](#contributing)
- [License](#license)

## 🛠 Installation

### Prerequisites

- [Clarinet](https://github.com/hirosystems/clarinet) (latest version)
- Node.js 16+ and npm
- Git

### Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/stx-labs/clarinet.git
   cd clarinet/counter-contract
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Verify setup**
   ```bash
   clarinet check
   ```

## 📖 Usage

### Local Development

Start the Clarinet console for interactive testing:

```bash
clarinet console
```

### Contract Functions

The contract provides three main functions:

- `read-counter()`: Returns the current counter value
- `increment()`: Increases the counter by 1
- `decrement()`: Decreases the counter by 1 (minimum value: 0)

### Example Usage

```clarity
;; Read current counter value
(read-counter)

;; Increment counter
(increment)

;; Decrement counter
(decrement)
```

## 🧪 Testing

Run the comprehensive test suite:

```bash
npm test
```

Run tests in watch mode:

```bash
npm run test:watch
```

View test coverage:

```bash
npm run test:coverage
```

## 🚀 Deployment

### Prerequisites for Testnet/Mainnet Deployment

1. **Install Leather Wallet**: Download from [leather.io](https://leather.io/) and set up a wallet
2. **Switch to Testnet**: In Leather settings, select "Testnet" network
3. **Get Testnet STX**: Visit [Hiro Platform Faucet](https://platform.hiro.so/faucet) and request testnet STX tokens

### Testnet Deployment Steps

1. **Configure Wallet**: Update `settings/Testnet.toml` with your testnet mnemonic:
   ```toml
   [accounts.deployer]
   mnemonic = "your 12-word seed phrase here"
   derivation = "m/44'/5757'/0'/0/0"
   ```

2. **Generate Deployment Plan**:
   ```bash
   clarinet deployments generate --testnet --medium-cost
   ```

3. **Deploy to Testnet**:
   ```bash
   clarinet deployments apply --testnet
   ```

### Local Devnet

For local testing:

1. Start Devnet:
   ```bash
   clarinet devnet start
   ```

2. Deploy contract:
   ```bash
   clarinet deployments generate --devnet
   clarinet deployments apply --devnet
   ```

### Deployed Contract

**Testnet Contract:**
- **Address:** `STGDS0Y17973EN5TCHNHGJJ9B31XWQ5YXBQ0KQ2Y.counter`
- **Explorer Link:** [View on Stacks Explorer](https://explorer.hiro.so/txid/STGDS0Y17973EN5TCHNHGJJ9B31XWQ5YXBQ0KQ2Y.counter?chain=testnet)

You can interact with the deployed contract using Leather wallet or build a frontend application.

## 📚 API Reference

### Public Functions

#### `read-counter`
Returns the current counter value.

**Returns:** `uint` - Current counter value

#### `increment`
Increments the counter by 1.

**Returns:** `bool` - Success status

#### `decrement`
Decrements the counter by 1 (if current value > 0).

**Returns:** `bool` - Success status

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guide](../../CONTRIBUTING.md) for details.

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Commit changes: `git commit -m 'Add amazing feature'`
4. Push to branch: `git push origin feature/amazing-feature`
5. Open a Pull Request

### Development Guidelines

- Follow Clarity best practices
- Add tests for new functionality
- Update documentation as needed
- Ensure all tests pass before submitting PR

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](../../LICENSE) file for details.

## 📞 Support

- 📧 **Email**: support@hirosystems.com
- 💬 **Discord**: [Join our community](https://discord.gg/stacks)
- 📖 **Documentation**: [Stacks Docs](https://docs.stacks.co)
- 🐛 **Issues**: [Report bugs](https://github.com/stx-labs/clarinet/issues)

---

<div align="center">

**Built with ❤️ by the Stacks Community**

[⭐ Star us on GitHub](https://github.com/stx-labs/clarinet) • [📚 Learn More](https://stacks.co)

</div>